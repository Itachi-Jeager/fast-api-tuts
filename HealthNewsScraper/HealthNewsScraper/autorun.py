# Import Modules
from scrapy.crawler import CrawlerProcess
from scrapy.utils.project import get_project_settings


def runner(spider_name: str, state: bool): 
    """
    A function that calls a named spider
    :param spider_name:spider
    :param state:1 (On), 0 (Off) state for deltafetch reset
    """

    # Get the project settings from settings.py
    process = CrawlerProcess(get_project_settings())

    # Begin specify spider name
    process.crawl(spider_name, deltafetch_reset=state)

    # Start crawling
    process.start()


