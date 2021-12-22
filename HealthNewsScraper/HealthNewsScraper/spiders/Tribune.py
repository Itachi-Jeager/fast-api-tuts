# Import Modules
import scrapy
from ..items import HealthnewsscraperItem
from scrapy.loader import ItemLoader


class TribuneSpider(scrapy.Spider):
    """
    A basic template spider class created using the command:
    **scrapy genspider spidername domain**. This Spider crawls and
    scrapes links from Tribune, and scrapes data from
    links crawled.
    Outputs data as JSON files with 4 attributes: link, headline,
    body, date.

    This class inherits behaviour from scrapy.Spider class.
    """

    # The name of the spider
    name = 'Tribune'

    # Domain allowed to manage redirects
    allowed_domains = ['tribuneonlineng.com']

    # The URL the spider begins crawling from
    start_urls = ['https://tribuneonlineng.com/category/health-news/']

    # extra settings for this spider
    custom_settings = {
        "FEEDS": {
            "./HealthNewsScraper/scrapes/tribune.jl": {"format": "jsonlines"}
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
        next_page = response.css("div.older")
        next_page_url = next_page.css("a::attr(href)").get()

        # Getting the full page information for the next page
        yield from self.scrape(response)

        # Conditional to determine whether a next page link exists
        if next_page_url is not None:
            print("Found url: {}".format(next_page_url))
            # Yield a call back which fetches the next page's link
            yield scrapy.Request(next_page_url, callback=self.parse)

    def scrape(self, response):
        """
            A function which takes a response and returns the individual news article links
            present in the response.
            :param response
            :return: request, request.meta['item']- list
        """

        # A loop that goes through every news post and retrieves the news' link and dates
        for news_card in response.css("h2.title")[:-2]:
            individual_news_link = news_card.css("a::attr(href)").get()

            request = scrapy.Request(individual_news_link, callback=self.news_reader)

            # News links retrieved are stored in the response meta
            request.meta['item'] = individual_news_link
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
        article = response.css("div.single-container")

        # Instantiate an Item loader to populate various fields and person data cleaning
        news_item_loader = ItemLoader(item=HealthnewsscraperItem(), selector=article)

        # Populate the link, Headline, Body and Date Fields
        # Retrieve the links stored in the response.meta
        # Retrieve the dates stored in the response.meta
        news_item_loader.add_value('link', response.meta['item'])
        news_item_loader.add_css('title', 'span.post-title::text')
        news_item_loader.add_css('body', 'p::text')
        news_item_loader.add_css('date_published', 'span.time b::text')

        yield news_item_loader.load_item()
