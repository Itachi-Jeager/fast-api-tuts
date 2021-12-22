# Define here the models for your scraped items
#
# See documentation in:
# https://docs.scrapy.org/en/latest/topics/items.html

# importing modules
import emoji
import re
import scrapy
from itemloaders.processors import Join, TakeFirst, MapCompose
from w3lib.html import remove_tags


def remove_whitespace(text):
    """
    A helper function that removes newlines and latin non breaking,
    space from scraped data.

    :param text
    :return: string
    """

    # replacing the newline carriages with empty space,
    # and striping the space
    text = text.replace('\n', '').strip()
    text = text.replace('\r', '').strip()
    text = text.replace('\t', '').strip()

    # replacing latin non breaking space with empty space,
    # and striping the space.
    text = re.sub(u"\xa0", " ", text)

    return text


def parse_date(example_link):
    """
    A helper function that extracts a date from a link,
    in scraped data.

    :param example_link
    :return: extract_date: string
    """

    # extracting date using regex.
    match_str = re.search(r'\d{4}/\d{2}/\d{2}', example_link)

    extract_date = str(match_str.group())

    return extract_date


def remove_emojis(example_text):
    """
    A helper function that removes emojis,
    from scraped data.

    :param example_text
    :return: clean string
    """
    return emoji.get_emoji_regexp().sub(r'', example_text)


class HealthnewsscraperItem(scrapy.Item):
    """
    An item that inherits from **scrapy.Item** class for performing
    cleaning and storage of scraped data.
    Removes HTML tags, named entities.
    Outputs an item.

    :return item-json/jsonlines/csv file
    """
    # Instantiate Headline field, remove tags and takes first result.
    title = scrapy.Field(input_processor=MapCompose(remove_tags, remove_whitespace),
                         output_processor=TakeFirst())

    # Instantiate Link field, remove tags and takes first result.
    link = scrapy.Field(input_processor=MapCompose(remove_tags),
                        output_processor=TakeFirst())

    # Instantiate Keyword Indicators field, remove tags, removes entities and,
    # removes white space and performs Keywords NLP.
    body = scrapy.Field(input_processor=MapCompose(remove_tags, remove_whitespace, remove_emojis),
                        output_processor=Join())

    # Instantiate Date field, remove tags and takes first result.
    date_published = scrapy.Field(input_processor=MapCompose(remove_tags, remove_whitespace),
                                  output_processor=TakeFirst())

    # Instantiate Scrape Date Field
    date_scraped = scrapy.Field()

    # Instantiate Scrape Spider name
    spider = scrapy.Field()


class PremiumscraperItem(scrapy.Item):
    """
    An item that inherits from **scrapy.Item** class for performing
    cleaning and storage of scraped data.
    Removes HTML tags, named entities.
    Outputs an item.

    :return item-json/jsonlines/csv file
    """

    # Instantiate Headline field, remove tags and takes first result.
    title = scrapy.Field(input_processor=MapCompose(remove_tags, remove_whitespace),
                         output_processor=TakeFirst())

    # Instantiate Link field, remove tags and takes first result.
    link = scrapy.Field(input_processor=MapCompose(remove_tags),
                        output_processor=TakeFirst())

    # Instantiate Keyword Indicators field, remove tags, removes entities and,
    # removes white space and performs Keywords NLP.
    body = scrapy.Field(input_processor=MapCompose(remove_tags, remove_whitespace, remove_emojis),
                        output_processor=Join())

    # Instantiate Date field, remove tags and takes first result.
    date_published = scrapy.Field(input_processor=MapCompose(remove_tags),
                                  output_processor=TakeFirst())

    # Instantiate Scrape Date Field
    date_scraped = scrapy.Field()

    # Instantiate Scrape Spider name
    spider = scrapy.Field()


class TechNextItem(scrapy.Item):
    """
    An item that inherits from **scrapy.Item** class for performing
    cleaning and storage of scraped data.
    Removes HTML tags, named entities.
    Outputs an item.

    :return item-json/jsonlines/csv file
    """
    # Instantiate Headline field, remove tags and takes first result.
    title = scrapy.Field(input_processor=MapCompose(remove_tags, remove_whitespace),
                         output_processor=TakeFirst())

    # Instantiate Link field, remove tags and takes first result.
    link = scrapy.Field(input_processor=MapCompose(remove_tags),
                        output_processor=TakeFirst())

    # Instantiate Keyword Indicators field, remove tags, removes entities and,
    # removes white space and performs Keywords NLP.
    body = scrapy.Field(input_processor=MapCompose(remove_tags, remove_whitespace, remove_emojis),
                        output_processor=Join())

    # Instantiate Date field, remove tags and takes first result.
    date_published = scrapy.Field(input_processor=MapCompose(remove_tags, parse_date),
                                  output_processor=TakeFirst())

    # Instantiate Scrape Date Field
    date_scraped = scrapy.Field()

    # Instantiate Scrape Spider name
    spider = scrapy.Field()

