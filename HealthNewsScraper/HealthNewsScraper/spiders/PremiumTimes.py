import scrapy
from ..items import PremiumscraperItem
from scrapy.loader import ItemLoader


class PremiumtimesSpider(scrapy.Spider):
    """
        A basic template spider class created using the command:
        **scrapy genspider spidername domain**. This Spider crawls and
        scrapes links from PremiumTimes, and scrapes data from
        links crawled.
        Outputs data as JSON files with 4 attributes: link, headline,
        body, date.

        This class inherits behaviour from scrapy.Spider class.
        """
    # The name of the spider
    name = 'PremiumTimes'

    # Domain allowed, to manage redirects
    allowed_domains = ['premiumtimesng.com']

    # The URL the spider begins crawling from
    start_urls = ['https://www.premiumtimesng.com/category/health/health-news']

    # extra settings for this spider
    custom_settings = {
        "FEEDS": {
            "./HealthNewsScraper/scrapes/premium_times.jl": {"format": "jsonlines"}
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
        next_page_url = response.css("a.page_nav.next::attr(href)").get()

        # Retrieve the next page from the scrape function
        yield from self.scrape(response)

        # Conditional to control the recursion of this function
        # based on whether on the next page url exists.
        if next_page_url is not None:
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
        for news_card in response.css("h3.jeg_post_title"):
            individual_news_link = news_card.css("a::attr(href)").get()

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

        # Isolating News page main content
        article = response.css("div.jeg_main_content")

        # Isolating Date
        date_link = article.css("a::text").getall()[1]

        # Instantiating an item loader with an item and a response.
        news_item_loader = ItemLoader(item=PremiumscraperItem(), selector=article)

        # Get the item we passed from scrape()
        news_item_loader.add_value('link', response.meta['item'])
        news_item_loader.add_css('title', 'h1.jeg_post_title')
        news_item_loader.add_css('body', 'p::text')
        news_item_loader.add_value('date_published', date_link)

        yield news_item_loader.load_item()
        # yield item  # Return the new phone number item back to scrape
