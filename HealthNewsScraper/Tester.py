from scrapy import settings
from scrapy.utils.log import configure_logging
from scrapy.utils.project import get_project_settings
from twisted.internet import reactor, defer
from scrapy.crawler import CrawlerRunner

runner = CrawlerRunner(settings)
configure_logging()


@defer.inlineCallbacks
def crawl(MySpider1, MySpider2):
    yield runner.crawl(MySpider1)
    yield runner.crawl(MySpider2)
    reactor.stop()

# the script will block here until the last crawl call is finished


if __name__ == '__main__':
    crawl('kelinahospital', 'HCIHealthcare')
    reactor.run()