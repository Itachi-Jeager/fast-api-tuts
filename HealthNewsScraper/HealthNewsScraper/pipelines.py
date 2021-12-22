# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://docs.scrapy.org/en/latest/topics/item-pipeline.html


# useful for handling different item types with a single interface
from itemadapter import ItemAdapter
import json
import pymongo


class HealthnewsscraperPipeline:
    def process_item(self, item, spider):
        return item


class StatsWriterPipeline:
    """
    This is a pipeline for writing the stats of the spiders to a file
    """
    def open_spider(self, spider):
        """
        A function which opens/creates a stats file
        :param spider
        """
        self.file = open('./HealthNewsScraper/logs/stats.txt', 'a')

    def close_spider(self, spider):
        """
        A function which retrieves the stats from the spiders and writes them to
        a stats file
        :param spider
        """
        spider_name = spider.name
        info = spider.crawler.stats.get_stats()

        if 'start_time' in info:
            scrape_time = f"{info['start_time']:%Y-%m-%d}"
        else:
            scrape_time = "Scrape Time Unavailable"
        if 'log_count/CRITICAL' in info:
            critical_errors = info['log_count/CRITICAL']
        else:
            critical_errors = "No Critical Errors Occurred"
        if 'deltafetch/skipped' in info:
            no_previously_visited_links = info['deltafetch/skipped']
        else:
            no_previously_visited_links = "First Time Scrape"
        if 'item_scraped_count' in info:
            no_items_scraped = info['item_scraped_count']
        else:
            no_items_scraped = "No New Links on this website"
        if 'deltafetch/stored' in info:
            stored_articles = info['deltafetch/stored']
        else:
            stored_articles = "No articles stored in this scrape"

        spider_dict = {"Spider Name": spider_name,
                       "Date": scrape_time,
                       "Number of New Articles Scraped": no_items_scraped,
                       "Critical Errors": critical_errors,
                       "Number of Previously visited links": no_previously_visited_links,
                       "Number of Articles scraped Remembered": stored_articles
                       }
        line = json.dumps(spider_dict) + "\n"
        self.file.write(line)
        self.file.close()


class MongoPipeline:

    collection_name = 'scraped_items'

    def __init__(self, mongo_uri, mongo_db):
        self.mongo_uri = mongo_uri
        self.mongo_db = mongo_db

    @classmethod
    def from_crawler(cls, crawler):
        return cls(
            mongo_uri=crawler.settings.get('MONGO_URI'),
            mongo_db=crawler.settings.get('MONGO_DATABASE', 'items')
        )

    def open_spider(self, spider):
        self.client = pymongo.MongoClient(self.mongo_uri)
        self.db = self.client[self.mongo_db]

    def close_spider(self, spider):
        self.client.close()

    def process_item(self, item, spider):
        self.db[self.collection_name].insert_one(ItemAdapter(item).asdict())
        return item


