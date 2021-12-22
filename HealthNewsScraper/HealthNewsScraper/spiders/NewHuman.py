# Import modules
import scrapy
from ..items import HealthnewsscraperItem
from scrapy.loader import ItemLoader


class NewhumanSpider(scrapy.Spider):
    """
    A basic template spider class created using the command:
    **scrapy genspider spidername domain**. This Spider crawls and
    scrapes links from New Humanitarian, and scrapes data from
    links crawled.
    Outputs data as JSON files with 4 attributes: link, headline,
    body, date.

    This class inherits behaviour from scrapy.Spider class.
    """

    # The name of the spider
    name = 'NewHuman'

    # Domain allowed to manage redirects
    allowed_domains = ['thenewhumanitarian.org']

    # The URL the spider begins crawling from
    start_urls = ['https://www.thenewhumanitarian.org/advanced-search?'
                  'keys=&field_report_region_tid%5B%5D=931&field_report_theme_tid%5B%5D'
                  '=466&field_report_type_tid%5B%5D=17&field_report_type_tid%5B%5D='
                  '416&field_report_type_tid%5B%5D=561&field_report_type_tid%5B%5D='
                  '15&field_report_type_tid%5B%5D=6186&field_report_type_tid%5B%5D='
                  '5359&field_report_type_tid%5B%5D=14&field_report_type_tid%5B%5D='
                  '5856&field_authors_tid=&date-filter-min-date%5Bdate%5D='
                  '&date-filter-max-date%5Bdate%5D=&items_per_page=12']

    # extra settings for this spider
    custom_settings = {
        "FEEDS": {
            "./HealthNewsScraper/scrapes/new_human.jl": {"format": "jsonlines"}
        },
    }

    def parse(self, response):
        """
        Parses the response gotten from the start URL.
        It retrieves the next page's link and stores it as a response.
        Outputs a request object.

        :param response:
        :return: generator
        """

        # Retrieves the next page's URL
        rel_next_page = response.css("li.pager-next a::attr(href)").get()
        next_page_full_link = response.urljoin(rel_next_page)

        # Getting the full page information for the next page
        yield from self.scrape(response)

        # Conditional to determine whether a next page link exists
        if next_page_full_link is not None:
            print(f"Found url: {next_page_full_link}")
            # Yield a call back which fetches the next page's link
            yield scrapy.Request(next_page_full_link, callback=self.parse)

    def scrape(self, response):
        """
            A function which takes a response and returns the individual news article links
            present in the response.
            :param response
            :return: request, request.meta['item']- list
        """

        # A loop that goes through every news post and retrieves the news' link and dates
        for news_card in response.css("ul.teaser-list li.views-row"):
            partial_individual_news_link = news_card.css("a.teaser::attr(href)").get()
            individual_news_link = response.urljoin(partial_individual_news_link)
            individual_news_dates = news_card.css("span.date--long::text").get()

            request = scrapy.Request(individual_news_link, callback=self.news_reader)

            # News links and dates retrieved are stored in the response meta
            request.meta['item'] = individual_news_link
            request.meta['date'] = individual_news_dates

            yield request

    @staticmethod
    def news_reader(response):
        """
        A function that reads individual news articles collecting the headline,
        date and news body.
        :param response
        :returns: populated item loader- json/csv/jsonlines
        """

        # Instantiate an Item loader to populate various fields and person data cleaning
        news_item_loader = ItemLoader(item=HealthnewsscraperItem(), response=response)

        # Populate the link, Headline, Indicator and Date Fields
        # Retrieve the links stored in the response.meta
        # Retrieve the dates stored in the response.meta
        news_item_loader.add_value('link', response.meta['item'])
        news_item_loader.add_css('title', 'div.article__intro h1.article__title::text')
        news_item_loader.add_css('body', 'div.field.field-name-body p::text')
        news_item_loader.add_value('date_published', response.meta['date'])

        yield news_item_loader.load_item()
