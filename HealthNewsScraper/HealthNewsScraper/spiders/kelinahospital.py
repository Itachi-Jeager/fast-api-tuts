# Importing Modules
import scrapy
from ..items import HealthnewsscraperItem
from scrapy.loader import ItemLoader


class KelinahospitalSpider(scrapy.Spider):
    """
    A basic template spider class created using the command:
    **scrapy genspider spidername domain**. This Spider crawls and
    scrapes links from Kelina Hospital, and scrapes data from
    links crawled.
    Outputs data as JSON files with 4 attributes: link, headline,
    body, date.

    This class inherits behaviour from scrapy.Spider class.
    """
    # The name of the spider
    name = 'kelinahospital'

    # Domain allowed to manage redirects
    allowed_domains = ['kelinahospital.com']

    # The URL the spider begins crawling from
    start_urls = ['https://www.kelinahospital.com/news-and-articles/']

    # extra settings for this spider
    custom_settings = {
        "FEEDS": {
            "./HealthNewsScraper/scrapes/kh.jl": {"format": "jsonlines"}
                },
    }

    def parse(self, response):
        """
        Parses the response gotten from the start URL.
        It retrieves the next page's link and stores it as a response.
        Outputs a request object.

        response: response gotten from the start URL.
        :param response:
        :return: generator
        """

        # Retrieves the next page's URL
        next_page = response.css("div.page-nav")
        next_page_url = next_page.css("a.next.page-numbers::attr(href)").get()

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

        # A loop that goes through every news post and retrieves the news' link
        for news_card in response.css("h3.post-title"):
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
        article = response.css("div.post-content")

        # Instantiate an Item loader to populate various fields and person data cleaning
        news_item_loader = ItemLoader(item=HealthnewsscraperItem(), selector=article)

        # Populate the link, Headline, Body and Date Fields
        # Retrieve the links stored in the response.meta
        news_item_loader.add_value('link', response.meta['item'])
        news_item_loader.add_css('title', 'h3.post-title::text')
        news_item_loader.add_css('body', 'div.post-text p::text')
        news_item_loader.add_css('date_published', 'span.post-info-month::text')

        yield news_item_loader.load_item()
