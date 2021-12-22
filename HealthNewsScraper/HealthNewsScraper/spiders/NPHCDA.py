# Importing modules
import scrapy
from ..items import HealthnewsscraperItem
from scrapy.loader import ItemLoader


class NphcdaSpider(scrapy.Spider):
    """
    A basic template spider class created using the command:
    **scrapy genspider spidername domain**. This Spider crawls and
    scrapes links from NPHCDA, and scrapes data from
    links crawled.
    Outputs data as JSON files with 4 attributes: link, headline,
    body, date.

    This class inherits behaviour from scrapy.Spider class.
    """

    # The name of the spider
    name = 'NPHCDA'

    # Domain allowed, to manage redirects
    allowed_domains = ['nphcda.gov.ng']

    # The URL the spider begins crawling from
    start_urls = ['https://nphcda.gov.ng/media-center/']

    # extra settings for this spider
    custom_settings = {
        "FEEDS": {
            "./HealthNewsScraper/scrapes/nphcda.jl": {"format": "jsonlines"}
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
        for news_card in response.css("article.post.fusion-column"):
            individual_news_link = news_card.css("h4.entry-title a::attr(href)").get()
            individual_news_date = news_card.css("span.fusion-month-year::text").get()

            # Instantiating a scrapy Request object with a callback,
            # to be applied on the links to individual news articles
            request = scrapy.Request(individual_news_link, callback=self.news_reader)

            # Saving the scraped links and dates as a list accessible to other,
            # functions.
            request.meta['item'] = individual_news_link
            request.meta['date'] = individual_news_date

            yield request

    @staticmethod
    def news_reader(response):
        """
        A scraper designed to operate on each individual news article.
        Outputs an item object.

        :param response: request['meta'] and request
        :return: item loader object
        """

        # Tells the spider where to begin looking for content to scrape
        news_block = response.css("article.post")

        # Instantiate an Item loader to populate various fields and person data cleaning
        news_item_loader = ItemLoader(item=HealthnewsscraperItem(), selector=news_block)

        # Populate the link, Headline, Indicators and Date Fields
        # Retrieve the links stored in the response.meta
        # Retrieve the dates stored in the response.meta
        news_item_loader.add_value('link', response.meta['item'])
        news_item_loader.add_css('title', '.entry-title::text')
        news_item_loader.add_css('body', 'div.post-content p::text')
        news_item_loader.add_value('date_published', response.meta['date'])

        yield news_item_loader.load_item()
