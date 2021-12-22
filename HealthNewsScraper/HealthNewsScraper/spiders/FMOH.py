import scrapy
from ..items import HealthnewsscraperItem
from scrapy.loader import ItemLoader


class FmohSpider(scrapy.Spider):
    """
    A basic template spider class created using the command:
    **scrapy genspider spidername domain**. This Spider crawls and
    scrapes links from Federal Ministry of Health, and scrapes data from
    links crawled.
    Outputs data as JSON files with 4 attributes: link, headline,
    body, date.

    This class inherits behaviour from scrapy.Spider class.
    """

    # The name of the spider
    name = 'FMOH'

    # Domain allowed to manage redirects
    allowed_domains = ['health.gov.ng']

    # The URL the spider begins crawling from
    start_urls = ['https://www.health.gov.ng/index.php?option=com_'
                  'k2&view=itemlist&task=category&id=16:front-page-news&Itemid=510']

    # extra settings for this spider
    custom_settings = {
        "FEEDS": {
            "./HealthNewsScraper/scrapes/dailypost.jl": {"format": "jsonlines"}
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
        next_page_div = response.css("div.k2Pagination")
        rel_next_page = next_page_div.css("a.next::attr(href)").get()
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
        for news_card in response.css("div.catItemHeader"):
            partial_individual_news_link = news_card.css("h3.catItemTitle a::attr(href)").get()
            individual_news_link = response.urljoin(partial_individual_news_link)
            individual_news_dates = news_card.css("span.catItemDateCreated::text").get()

            request = scrapy.Request(individual_news_link, callback=self.news_reader)

            # News links retrieved are stored in the response meta
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

        # Tells the spider where to begin looking for content to scrape
        article = response.css("div#k2Container")

        # Instantiate an Item loader to populate various fields and person data cleaning
        news_item_loader = ItemLoader(item=HealthnewsscraperItem(), selector=article)

        # Populate the link, Headline, Indicator and Date Fields
        # Retrieve the links stored in the response.meta
        # Retrieve the dates stored in the response.meta
        news_item_loader.add_value('link', response.meta['item'])
        news_item_loader.add_css('title', 'h2.itemTitle::text')
        news_item_loader.add_css('body', 'div.itemFullText p::text')
        news_item_loader.add_value('date_published', response.meta['date'])

        yield news_item_loader.load_item()
