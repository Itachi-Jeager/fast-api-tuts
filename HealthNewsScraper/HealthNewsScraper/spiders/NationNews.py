# importing modules
import scrapy
from ..items import HealthnewsscraperItem
from scrapy.loader import ItemLoader


class NationnewsSpider(scrapy.Spider):
    """
    A basic template spider class created using the command:
    **scrapy genspider spidername domain**. This Spider crawls and
    scrapes links from PublicHealth, and scrapes data from
    links crawled.
    Outputs data as JSON files with 4 attributes: link, headline,
    body, date.

    This class inherits behaviour from scrapy.Spider class.
    """
    # The name of the spider
    name = 'NationNews'

    # Domain allowed, to manage redirects
    allowed_domains = ['publichealth.com.ng']

    # The URL the spider begins crawling from
    start_urls = ['http://publichealth.com.ng/news-and-resources/']

    custom_settings = {
        "FEEDS": {
            "./HealthNewsScraper/scrapes/public_health.jl": {"format": "jsonlines"}
        },
    }

    def parse(self, response):
        """
        Parses the response gotten from the start URL.
        Outputs a request object.

        response: response gotten from the start URL.
        :param response:
        :return: generator
        """
        # Looping through the news cards in the response to retrieve,
        # links to individual news articles.
        for news_card in response.css("div.eg-ronald-reagan-element-8-a"):
            individual_news_link = news_card.css("a.eg-ronald-reagan-element-8").attrib["href"]

            # Instantiating a scrapy Request object with a callback,
            # to be applied on the links to individual news articles
            request = scrapy.Request(individual_news_link, callback=self.news_reader)

            # Saving the scraped links as a list accessible to other,
            # functions.
            request.meta['item'] = individual_news_link

            yield request

    @staticmethod
    def news_reader(response):
        """
        A scraper designed to operate on each individual news article.
        Outputs an item object.

        :param response: request['meta'] and request
        :return: item loader object
        """

        # Instantiating an item loader with an item and a response.
        news_item_loader = ItemLoader(item=HealthnewsscraperItem(), response=response)

        # Populating the link, headline, body and date fields.
        news_item_loader.add_value('link', response.meta['item'])
        news_item_loader.add_css('title', 'h1.page-title::text')
        news_item_loader.add_css('body', 'p::text')
        news_item_loader.add_css('date_published', 'span.meta-date::text')

        # Return item loader object ready to exported
        yield news_item_loader.load_item()
