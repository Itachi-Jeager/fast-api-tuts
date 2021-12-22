# Import Modules
from scrapy.crawler import CrawlerProcess
from scrapy.utils.project import get_project_settings
import pandas as pd
from datetime import datetime
import numpy as np
import smtplib
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart
from socket import gaierror
# from mail_sender import mail_sender as ms
# from FastAPI.HealthNewsScraper.mail_sender import mail_sender as ms

LIST_OF_SCRAPERS = ['BusinessDay', 'DailyPost', 'FMOH', 'HCIHealthcare',
                    'kelinahospital', 'NCDCNews', 'NHREC', 'NaijaNews',
                    'NationNews', 'MedWorld', 'NewHuman', 'NACA',
                    'NPHCDA', 'PremiumTimes', 'ProShare', 'PunchNews',
                    'SFH', 'TechNext', 'TodayNews', 'Tribune']


def runner(spiders: list, state):
    """
    A function that calls a named spider
    :param spiders:spider
    :param state:1 (On), 0 (Off) state for deltafetch reset
    """

    # Get the project settings from settings.py
    process = CrawlerProcess(get_project_settings())

    # Begin specify spider name
    # process.crawl(spiders, deltafetch_reset=state)
    # process.crawl(spiders[0], deltafetch_reset=state)
    # process.crawl(spiders[1], deltafetch_reset=state)
    # process.crawl(spiders[2], deltafetch_reset=state)
    # process.crawl(spiders[3], deltafetch_reset=state)
    for spider in spiders:
        process.crawl(spider, deltafetch_reset=state)

    # Start crawling
    process.start()


def make_data_table(path_to_file: str):
    """
    Construct a dataframe from the stats log, and returns
    a HTML table with stats of the spiders.

    :param path_to_file: the path to the stats.txt file
    :return: today_scrape_html
    """
    stats = pd.read_json(path_to_file, orient='str', lines=True)
    this_moment = datetime.now()
    today_date = this_moment.date()
    numpy_time = np.datetime64(today_date)
    date_conditional = stats['Date'] == numpy_time
    today_scrape_df = stats[date_conditional].copy()
    today_scrape_df = today_scrape_df.reset_index(drop=True)
    today_scrape_html = today_scrape_df.to_html()
    return today_scrape_html


# def send_mail(data_table):
#     """
#     Sends a mail with a data table to specified recipients

#     :param data_table: a pandas dataframe which presents like a html table
#     """
#     email_receivers = {
#                         'Tobi': 'ogunwareoluwatobi@gmail.com',
#                         'MSDAT': 'Msdat@e4email.net',
#                       }
#     login = "msdat@e4email.net"
#     password = "Zebra555"
#     sender_email = login
#     this_moment = datetime.now()
#     today_date = this_moment.date()
#     for name, email in email_receivers.items():
#         receiver_email = email

#         message = MIMEMultipart('alternative')

#         message["Subject"] = "Custom Scraper Report"
#         message["From"] = sender_email
#         message["To"] = receiver_email

#         # Add Text and HTML content to the body of the message
#         try:
#             mail_skeleton = ms(email_topic="Custom Scraper Report",
#                                email_body="Here are the stats from today's scrape: \n"
#                                            f"{data_table}",
#                                receiver_name=name,
#                                email_source_script="Custom Scraper Script",
#                                date_sent=today_date,
#                                source_team="PyData Team")

#             part_2 = MIMEText(mail_skeleton, "html")
#             message.attach(part_2)

#             server = smtplib.SMTP('smtp-mail.outlook.com', 587)
#             server.starttls()
#             server.ehlo()
#             server.login(login, password)
#             server.sendmail(sender_email, receiver_email, message.as_string())
#             server.close()

#             # telling the script to report if your message was sent or which errors need to be fixed
#             print(f'An email has been sent to {name}')
#         except (gaierror, ConnectionRefusedError):
#             print(f'Failed to connect to the server. Bad connection settings? Not sent to {name}, {email}')
#         except smtplib.SMTPServerDisconnected:
#             print(f'Failed to connect to the server. Wrong user/password?Not sent to {name}, {email}')
#         except smtplib.SMTPException as e:
#             print(f'SMTP error occurred {str(e)}  Not sent to {name}, {email}')


# Typical execution
if __name__ == '__main__':
    print(LIST_OF_SCRAPERS[3:5])
    runner(LIST_OF_SCRAPERS[3:5], state=0)
    # new_data = make_data_table("./HealthNewsScraper/logs/stats.txt")
    # send_mail(new_data)

