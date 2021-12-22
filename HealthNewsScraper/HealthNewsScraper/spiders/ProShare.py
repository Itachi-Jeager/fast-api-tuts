# Importing Modules
import scrapy
from ..items import HealthnewsscraperItem
from scrapy.loader import ItemLoader


class ProshareSpider(scrapy.Spider):
    """
    A basic template spider class created using the command:
    **scrapy genspider spidername domain**. This Spider crawls and
    scrapes links from ProShare, and scrapes data from
    links crawled.
    Outputs data as JSON files with 4 attributes: link, headline,
    body, date.

    This class inherits behaviour from scrapy.Spider class.
    """

    # The name of the spider
    name = 'ProShare'

    # Domain allowed to manage redirects
    allowed_domains = ['proshareng.com']

    # The URL the spider begins crawling from
    start_urls = ['https://www.proshareng.com/newscategory/Health/1']

    # extra settings for this spider
    custom_settings = {
        "FEEDS": {
            "./HealthNewsScraper/scrapes/proshare.jl": {"format": "jsonlines"}
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
        next_page = response.css("div.searchnext")
        next_page_url = next_page.xpath("a[contains(., 'NEXT')]").css("a::attr(href)").get()
        full_page_url = response.urljoin(next_page_url)

        # Conditional variable
        has_content = response.css("div.searchtextheading")

        # Getting the full page information for the next page
        yield from self.scrape(response)

        # Conditional to determine whether a next page link exists
        if has_content is not None:
            print("Found url: {}".format(next_page_url))
            # Yield a call back which fetches the next page's link
            yield scrapy.Request(full_page_url, callback=self.parse)

    def scrape(self, response):
        """
        A function which takes a response and returns the individual news article links
        present in the response.
        :param response
        :return: request, request.meta['item']- list
        """

        # A loop that goes through every news post and retrieves the news' link
        for news_card in response.css("div.row"):
            individual_news_link = news_card.css("div.repcattitletext a::attr(href)").get()
            individual_full_news_link = response.urljoin(individual_news_link)

            request = scrapy.Request(individual_full_news_link, callback=self.news_reader)

            # News links retrieved are stored in the response meta
            request.meta['item'] = individual_full_news_link
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
        news_item_loader.add_value('link', response.meta['item'])
        news_item_loader.add_css('title', 'div.npnewstitle h1::text')
        news_item_loader.add_css('body', 'div.npnewstext span::text')

        yield news_item_loader.load_item()

