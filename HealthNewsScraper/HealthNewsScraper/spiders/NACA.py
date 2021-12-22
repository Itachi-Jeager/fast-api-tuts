# Importing Modules
import scrapy
from ..items import HealthnewsscraperItem
from scrapy.loader import ItemLoader


class NacaSpider(scrapy.Spider):
    """
    A basic template spider class created using the command:
    **scrapy genspider spidername domain**. This Spider crawls and
    scrapes links from NACA, and scrapes data from
    links crawled.
    Outputs data as JSON files with 4 attributes: link, headline,
    body, date.

    This class inherits behaviour from scrapy.Spider class.
    """

    # The name of the spider
    name = 'NACA'

    # Domain allowed, to manage redirects
    allowed_domains = ['naca.gov.ng']

    # The URL the spider begins crawling from
    start_urls = ['https://naca.gov.ng/news/']

    # extra settings for this spider
    custom_settings = {
        "FEEDS": {
            "./HealthNewsScraper/scrapes/naca.jl": {"format": "jsonlines"}
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
        # links and dates of individual news articles.
        for news_card in response.css("div.post_inner"):
            individual_news_link = news_card.css("h5.no_stripe a").attrib["href"]
            news_date = news_card.css("span.the_date::text").get()

            # Instantiating a scrapy Request object with a callback,
            # to be applied on the links to individual news articles
            request = scrapy.Request(individual_news_link, callback=self.news_reader)

            # Saving the scraped links and dates as a list accessible to other,
            # functions.
            request.meta['item'] = individual_news_link
            request.meta['date'] = news_date

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
        news_block = response.css("div.vc_column-inner")

        # Instantiating an item loader with an item and a response.
        news_item_loader = ItemLoader(item=HealthnewsscraperItem(), selector=news_block)

        # Populate the link, Headline, Indicator and Date Fields
        # Retrieve the links and dates stored in the response.meta
        news_item_loader.add_value('link', response.meta['item'])
        news_item_loader.add_css('title', 'h2::text')
        news_item_loader.add_css('body', 'p::text')
        news_item_loader.add_value('date_published', response.meta['date'])

        yield news_item_loader.load_item()
