# Custom Scrapers

This Repo contains scripts executing custom spiders for 20 Health News Websites. It also
contains settings for the spiders, a module for data cleaning and formatting, and module 
for running the spiders.


## Prerequisites
***
Interpreter: Python 3.9.7

Scraping Framework: Scrapy==2.5.0

OS: Windows 10 Home 1909
## Installation
***
All packages used are part of the Standard python Library except otherwise specified.

emoji==1.4.2

Protego==0.1.16

scipy==1.7.1

scrapy-deltafetch==1.2.1

scrapy-magicfields==1.1.0

Obtained with:

`pip install emoji==1.4.2`
`pip install Protego==0.1.16`
`pip install scipy==1.7.1`

`pip install scrapy==2.5.0` `pip install scrapy-deltafetch==2.0.1`

`pip install scrapy-magicfields==1.1.0`, `pip install pandas==1.3.4`

**OR**

`python -m pip install -r requirements.txt`

## Usage
Use examples liberally, they exist in separate scripts with independent execution.
To use from the command line, navigate to **HealthNewsScraper** directory, and execute
the following command:

`scrapy crawl <spider_name>`.

For example: `scrapy crawl BusinessDay`

The scripts can also be run by typing `**python3 mainscript.py**` after providing correct parameters
to the function within module named *mainscript.py*.

The expected output upon running these spiders is a notification on the stats for the spider
before, during, and after running, with the data being accessed, in the *HealthNewsScraper/HealthNewsScraper/logs* directory. After execution a jsonlines
file containing the scraped data will be exported to *HealthNewsScraper/HealthNewsScraper/scrapes*.


## Contributing
Pull requests are welcome from team members. For major changes,
please open an issue first to discuss what you would like to change.
Make sure you assign the appropriate changelogs.
Please make sure to update tests as appropriate.
To contribute to custom-scraper, follow these steps:

Fork this repository.

1. Create a branch: git checkout -b <branch_name>.

2. Make your changes and commit them: git commit -m '<commit_message>'

3. Push to the original branch: git push origin <project_name>/<location>

4. Create the pull request.


## License
MIT

