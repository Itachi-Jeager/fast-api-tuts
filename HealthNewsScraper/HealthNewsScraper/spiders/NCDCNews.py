import scrapy
from ..items import HealthnewsscraperItem
from scrapy.loader import ItemLoader


class NcdcnewsSpider(scrapy.Spider):
    """
        A basic template spider class created using the command:
        **scrapy genspider spidername domain**. This Spider crawls and
        scrapes links from NCDC, and scrapes data from
        links crawled.
        Outputs data as JSON files with 4 attributes: link, headline,
        body, date.

        This class inherits behaviour from scrapy.Spider class.
        """

    # The name of the spider
    name = 'NCDCNews'

    # Domain allowed, to manage redirects
    allowed_domains = ['ncdc.gov.ng']

    # The URL to begin scraping from
    start_urls = ['https://ncdc.gov.ng/news/archive']

    # extra settings for this spider
    custom_settings = {
        "FEEDS": {
            "./HealthNewsScraper/scrapes/scrapes/ncdc.jl": {"format": "jsonlines"}
        },
    }

    def parse(self, response):
        """
            Parses the response gotten from the start URL.
            Outputs a request object.

            :param response:
            :return: generator
        """

        # Looping through the news cards in the response to retrieve,
        # links to individual news articles.
        for news_card in response.css("div.col-sm-10"):
            individual_news_link = news_card.css("a").attrib["href"]

            # Joining the retrieved link to the start URL to make,
            # an absolute link.
            individual_full_news_link = response.urljoin(individual_news_link)

            # Instantiating a scrapy Request object with a callback,
            # to be applied on the links to individual news articles
            request = scrapy.Request(individual_full_news_link, callback=self.news_reader)

            # Saving the scraped links as a list accessible to other,
            # functions.
            request.meta['item'] = individual_full_news_link

            yield request

    @staticmethod
    def news_reader(response):
        """
            A scraper designed to operate on each individual news article.
            Outputs an item object.

            :param response: request['meta'] and request
            :return: item loader object
            """

        # Isolating the news content from the full page
        news_block = response.css("div.col-sm-7")

        # Instantiating an item loader with an item and a selector.
        news_item_loader = ItemLoader(item=HealthnewsscraperItem(), selector=news_block)

        # Populating the link, headline, indicator and date fields
        news_item_loader.add_value('link', response.meta['item'])
        news_item_loader.add_css('title', 'h3::text')
        news_item_loader.add_css('body', 'p::text')
        news_item_loader.add_css('date_published', 'small::text')

        # Return item loader object ready to be exported
        yield news_item_loader.load_item()
