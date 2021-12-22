# Import Modules
import scrapy
from ..items import HealthnewsscraperItem
from scrapy.loader import ItemLoader


class PunchnewsSpider(scrapy.Spider):
    """
        A basic template spider class created using the command:
        **scrapy genspider spidername domain**. This Spider crawls and
        scrapes links from Punch News, and scrapes data from
        links crawled.
        Outputs data as JSON files with 4 attributes: link, headline,
        body, date.

        This class inherits behaviour from scrapy.Spider class.
        """

    # The name of the spider
    name = 'PunchNews'

    # Domain allowed, to manage redirects
    allowed_domains = ['healthwise.punchng.com']

    # The URL the spider begins crawling from
    start_urls = ['http://healthwise.punchng.com/category/news/']

    # extra settings for this spider
    custom_settings = {
        "FEEDS": {
            "./HealthNewsScraper/scrapes/punch.jl": {"format": "jsonlines"}
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

        # Retrieving the link to the next page
        next_page = response.css("div.page-nav")
        next_page_url = next_page.css("a::attr(href)").getall()[-1]

        # Retrieving HTML tag to base conditional on
        italics_within_link = next_page.css("i").get()

        # Retrieve the next page from the scrape function
        yield from self.scrape(response)

        # Conditional to control the recursion of this function
        # based on whether italics tag exists exists
        if italics_within_link:
            print("Found url: {}".format(next_page_url))

            # Call parse and Yield a request if the next page exists
            yield scrapy.Request(next_page_url, callback=self.parse)

    def scrape(self, response):
        """
            Parses the response gotten from the start URL and retrieves,
            individual links for news articles.
            Outputs a Request object containing the news links scraped.
            :param response:
            :return: generator- request object
            """

        # Looping through the news cards in the response to retrieve,
        # links to individual news articles.
        for news_card in response.css("div.td-module-thumb"):
            individual_news_link = news_card.css("a.td-image-wrap::attr(href)").get()

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

        # Tells the spider where to begin looking for content to scrape
        article = response.css("div.tdc-zone")
        content = article.css("div.tdb-block-inner")

        # Instantiate an Item loader to populate various fields and person data cleaning
        news_item_loader = ItemLoader(item=HealthnewsscraperItem(), selector=article)

        # Populate the link, Headline, Body and Date Fields
        # Retrieve the links stored in the response.meta
        news_item_loader.add_value('link', response.meta['item'])
        news_item_loader.add_css('title', 'h1.tdb-title-text')
        news_item_loader.add_css('body', 'p span::text')
        news_item_loader.add_css('date_published', 'time.td-module-date::text')

        # Return item loader object ready to exported
        yield news_item_loader.load_item()
