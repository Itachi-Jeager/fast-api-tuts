2021-12-13 16:25:37 [scrapy.extensions.telnet] INFO: Telnet Password: a01991413803d4ec
2021-12-13 16:25:37 [scrapy.middleware] INFO: Enabled extensions:
['scrapy.extensions.corestats.CoreStats',
 'scrapy.extensions.telnet.TelnetConsole',
 'scrapy.extensions.feedexport.FeedExporter',
 'scrapy.extensions.logstats.LogStats']
2021-12-13 16:25:37 [scrapy.middleware] INFO: Enabled downloader middlewares:
['scrapy.downloadermiddlewares.robotstxt.RobotsTxtMiddleware',
 'scrapy.downloadermiddlewares.httpauth.HttpAuthMiddleware',
 'scrapy.downloadermiddlewares.downloadtimeout.DownloadTimeoutMiddleware',
 'scrapy.downloadermiddlewares.defaultheaders.DefaultHeadersMiddleware',
 'scrapy.downloadermiddlewares.useragent.UserAgentMiddleware',
 'scrapy.downloadermiddlewares.retry.RetryMiddleware',
 'scrapy.downloadermiddlewares.redirect.MetaRefreshMiddleware',
 'scrapy.downloadermiddlewares.httpcompression.HttpCompressionMiddleware',
 'scrapy.downloadermiddlewares.redirect.RedirectMiddleware',
 'scrapy.downloadermiddlewares.cookies.CookiesMiddleware',
 'scrapy.downloadermiddlewares.httpproxy.HttpProxyMiddleware',
 'scrapy.downloadermiddlewares.stats.DownloaderStats']
2021-12-13 16:25:37 [scrapy.middleware] INFO: Enabled spider middlewares:
['scrapy_deltafetch.DeltaFetch',
 'scrapy.spidermiddlewares.httperror.HttpErrorMiddleware',
 'scrapy_magicfields.MagicFieldsMiddleware',
 'scrapy.spidermiddlewares.offsite.OffsiteMiddleware',
 'HealthNewsScraper.middlewares.HealthnewsscraperSpiderMiddleware',
 'scrapy.spidermiddlewares.referer.RefererMiddleware',
 'scrapy.spidermiddlewares.urllength.UrlLengthMiddleware',
 'scrapy.spidermiddlewares.depth.DepthMiddleware']
2021-12-13 16:25:37 [scrapy.middleware] INFO: Enabled item pipelines:
['HealthNewsScraper.pipelines.StatsWriterPipeline']
2021-12-13 16:25:37 [scrapy.core.engine] INFO: Spider opened
2021-12-13 16:25:37 [scrapy.extensions.logstats] INFO: Crawled 0 pages (at 0 pages/min), scraped 0 items (at 0 items/min)
2021-12-13 16:25:37 [kelinahospital] INFO: Spider opened: kelinahospital
2021-12-13 16:25:37 [scrapy.extensions.telnet] INFO: Telnet console listening on 127.0.0.1:6023
2021-12-13 16:25:47 [py.warnings] WARNING: C:\Users\oluwa\.virtualenvs\PCSpiders\lib\site-packages\scrapy_magicfields\middleware.py:110: ScrapyDeprecationWarning: scrapy.item.BaseItem is deprecated, please use scrapy.item.Item instead
  if isinstance(_res, (BaseItem, dict)):

2021-12-13 16:25:47 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/news/surgical_aid_program_2021/>
2021-12-13 16:25:47 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/healthcare/composition-of-uroliths-seen-in-patients-in-abuja-nigeria-a-single-centre-retrospective-analysis-of-155-stones/>
2021-12-13 16:25:47 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/initial-experience-with-holmium-laser-enucleation-of-the-prostate-in-a-urology-specialist-hospital-in-nigeria/>
2021-12-13 16:25:47 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/news/kelina-hospital-team-just-after-holep-in-april-2021/>
2021-12-13 16:25:47 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/healthcare/staghorn-culculi-what-you-should-know/>
2021-12-13 16:25:47 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/oral-habits-and-crooked-teeth/>
2021-12-13 16:25:47 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/news/medical-supplies-donated-to-kelina-hospital/>
2021-12-13 16:25:47 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/a-stitch-in-time/>
2021-12-13 16:25:47 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/news/surgical-aid-program-2020-report/>
2021-12-13 16:25:47 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/does-increased-psa-mean-prostate-cancer/>
2021-12-13 16:25:51 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/news/surgical-outreach-2020/>
2021-12-13 16:25:51 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/newsletters/capacity-building-efforts-at-kelina-hospital/>
2021-12-13 16:25:51 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/a-thought-on-breast-cancer/>
2021-12-13 16:25:51 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/aesthetic-fillings/>
2021-12-13 16:25:51 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/news/invitation-for-surgical-outreach-programme-2019/>
2021-12-13 16:25:51 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/endometriosis/>
2021-12-13 16:25:51 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/fibroids-meaning-and-symptoms/>
2021-12-13 16:25:51 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/surgeons-notes-how-long-is-my-surgery-going-to-take/>
2021-12-13 16:25:51 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/surgeons-notes-foreign-bodies-in-the-ear/>
2021-12-13 16:25:51 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/urinary-retention-common-misconceptions-symptoms-and-treatment/>
2021-12-13 17:19:29 [scrapy.utils.log] INFO: Scrapy 2.5.0 started (bot: HealthNewsScraper)
2021-12-13 17:19:29 [scrapy.utils.log] INFO: Versions: lxml 4.6.3.0, libxml2 2.9.5, cssselect 1.1.0, parsel 1.6.0, w3lib 1.22.0, Twisted 21.7.0, Python 3.9.5 (tags/v3.9.5:0a7dcbd, May  3 2021, 17:27:52) [MSC v.1928 64 bit (AMD64)], pyOpenSSL 20.0.1 (OpenSSL 1.1.1k  25 Mar 2021), cryptography 3.4.7, Platform Windows-10-10.0.19042-SP0
2021-12-13 17:19:29 [scrapy.crawler] INFO: Overridden settings:
{'BOT_NAME': 'HealthNewsScraper',
 'CONCURRENT_REQUESTS': 8,
 'CONCURRENT_REQUESTS_PER_IP': 8,
 'DOWNLOAD_DELAY': 5,
 'FEED_EXPORT_ENCODING': 'utf-8',
 'FEED_EXPORT_FIELDS': ['link',
                        'title',
                        'body',
                        'date_published',
                        'date_scraped'],
 'LOG_ENABLED': False,
 'LOG_FILE': './HealthNewsScraper/logs/scrapelogs.jl',
 'LOG_LEVEL': 20,
 'NEWSPIDER_MODULE': 'HealthNewsScraper.spiders',
 'ROBOTSTXT_OBEY': True,
 'SPIDER_MODULES': ['HealthNewsScraper.spiders']}
2021-12-13 17:19:29 [scrapy.extensions.telnet] INFO: Telnet Password: c35610e39183c79b
2021-12-13 17:19:29 [scrapy.middleware] INFO: Enabled extensions:
['scrapy.extensions.corestats.CoreStats',
 'scrapy.extensions.telnet.TelnetConsole',
 'scrapy.extensions.feedexport.FeedExporter',
 'scrapy.extensions.logstats.LogStats']
2021-12-13 17:19:29 [scrapy.middleware] INFO: Enabled downloader middlewares:
['scrapy.downloadermiddlewares.robotstxt.RobotsTxtMiddleware',
 'scrapy.downloadermiddlewares.httpauth.HttpAuthMiddleware',
 'scrapy.downloadermiddlewares.downloadtimeout.DownloadTimeoutMiddleware',
 'scrapy.downloadermiddlewares.defaultheaders.DefaultHeadersMiddleware',
 'scrapy.downloadermiddlewares.useragent.UserAgentMiddleware',
 'scrapy.downloadermiddlewares.retry.RetryMiddleware',
 'scrapy.downloadermiddlewares.redirect.MetaRefreshMiddleware',
 'scrapy.downloadermiddlewares.httpcompression.HttpCompressionMiddleware',
 'scrapy.downloadermiddlewares.redirect.RedirectMiddleware',
 'scrapy.downloadermiddlewares.cookies.CookiesMiddleware',
 'scrapy.downloadermiddlewares.httpproxy.HttpProxyMiddleware',
 'scrapy.downloadermiddlewares.stats.DownloaderStats']
2021-12-13 17:19:29 [scrapy.middleware] INFO: Enabled spider middlewares:
['scrapy_deltafetch.DeltaFetch',
 'scrapy.spidermiddlewares.httperror.HttpErrorMiddleware',
 'scrapy_magicfields.MagicFieldsMiddleware',
 'scrapy.spidermiddlewares.offsite.OffsiteMiddleware',
 'HealthNewsScraper.middlewares.HealthnewsscraperSpiderMiddleware',
 'scrapy.spidermiddlewares.referer.RefererMiddleware',
 'scrapy.spidermiddlewares.urllength.UrlLengthMiddleware',
 'scrapy.spidermiddlewares.depth.DepthMiddleware']
2021-12-13 17:19:29 [scrapy.middleware] INFO: Enabled item pipelines:
['HealthNewsScraper.pipelines.StatsWriterPipeline']
2021-12-13 17:19:29 [scrapy.core.engine] INFO: Spider opened
2021-12-13 17:19:29 [scrapy.extensions.logstats] INFO: Crawled 0 pages (at 0 pages/min), scraped 0 items (at 0 items/min)
2021-12-13 17:19:29 [HCIHealthcare] INFO: Spider opened: HCIHealthcare
2021-12-13 17:19:29 [scrapy.extensions.telnet] INFO: Telnet console listening on 127.0.0.1:6023
2021-12-13 17:19:29 [scrapy.crawler] INFO: Overridden settings:
{'BOT_NAME': 'HealthNewsScraper',
 'CONCURRENT_REQUESTS': 8,
 'CONCURRENT_REQUESTS_PER_IP': 8,
 'DOWNLOAD_DELAY': 5,
 'FEED_EXPORT_ENCODING': 'utf-8',
 'FEED_EXPORT_FIELDS': ['link',
                        'title',
                        'body',
                        'date_published',
                        'date_scraped'],
 'LOG_ENABLED': False,
 'LOG_FILE': './HealthNewsScraper/logs/scrapelogs.jl',
 'LOG_LEVEL': 20,
 'NEWSPIDER_MODULE': 'HealthNewsScraper.spiders',
 'ROBOTSTXT_OBEY': True,
 'SPIDER_MODULES': ['HealthNewsScraper.spiders']}
2021-12-13 17:19:29 [scrapy.extensions.telnet] INFO: Telnet Password: a8a5b4c91b531286
2021-12-13 17:19:29 [scrapy.middleware] INFO: Enabled extensions:
['scrapy.extensions.corestats.CoreStats',
 'scrapy.extensions.telnet.TelnetConsole',
 'scrapy.extensions.feedexport.FeedExporter',
 'scrapy.extensions.logstats.LogStats']
2021-12-13 17:19:29 [scrapy.middleware] INFO: Enabled downloader middlewares:
['scrapy.downloadermiddlewares.robotstxt.RobotsTxtMiddleware',
 'scrapy.downloadermiddlewares.httpauth.HttpAuthMiddleware',
 'scrapy.downloadermiddlewares.downloadtimeout.DownloadTimeoutMiddleware',
 'scrapy.downloadermiddlewares.defaultheaders.DefaultHeadersMiddleware',
 'scrapy.downloadermiddlewares.useragent.UserAgentMiddleware',
 'scrapy.downloadermiddlewares.retry.RetryMiddleware',
 'scrapy.downloadermiddlewares.redirect.MetaRefreshMiddleware',
 'scrapy.downloadermiddlewares.httpcompression.HttpCompressionMiddleware',
 'scrapy.downloadermiddlewares.redirect.RedirectMiddleware',
 'scrapy.downloadermiddlewares.cookies.CookiesMiddleware',
 'scrapy.downloadermiddlewares.httpproxy.HttpProxyMiddleware',
 'scrapy.downloadermiddlewares.stats.DownloaderStats']
2021-12-13 17:19:29 [scrapy.middleware] INFO: Enabled spider middlewares:
['scrapy_deltafetch.DeltaFetch',
 'scrapy.spidermiddlewares.httperror.HttpErrorMiddleware',
 'scrapy_magicfields.MagicFieldsMiddleware',
 'scrapy.spidermiddlewares.offsite.OffsiteMiddleware',
 'HealthNewsScraper.middlewares.HealthnewsscraperSpiderMiddleware',
 'scrapy.spidermiddlewares.referer.RefererMiddleware',
 'scrapy.spidermiddlewares.urllength.UrlLengthMiddleware',
 'scrapy.spidermiddlewares.depth.DepthMiddleware']
2021-12-13 17:19:29 [scrapy.middleware] INFO: Enabled item pipelines:
['HealthNewsScraper.pipelines.StatsWriterPipeline']
2021-12-13 17:19:29 [scrapy.core.engine] INFO: Spider opened
2021-12-13 17:19:29 [scrapy.extensions.logstats] INFO: Crawled 0 pages (at 0 pages/min), scraped 0 items (at 0 items/min)
2021-12-13 17:19:29 [kelinahospital] INFO: Spider opened: kelinahospital
2021-12-13 17:19:29 [scrapy.extensions.telnet] INFO: Telnet console listening on 127.0.0.1:6024
2021-12-13 17:19:34 [py.warnings] WARNING: C:\Users\oluwa\Downloads\Data science II\FastAPI\venv\lib\site-packages\scrapy_magicfields\middleware.py:110: ScrapyDeprecationWarning: scrapy.item.BaseItem is deprecated, please use scrapy.item.Item instead
  if isinstance(_res, (BaseItem, dict)):

2021-12-13 17:19:34 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/news/surgical_aid_program_2021/>
2021-12-13 17:19:34 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/healthcare/composition-of-uroliths-seen-in-patients-in-abuja-nigeria-a-single-centre-retrospective-analysis-of-155-stones/>
2021-12-13 17:19:34 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/initial-experience-with-holmium-laser-enucleation-of-the-prostate-in-a-urology-specialist-hospital-in-nigeria/>
2021-12-13 17:19:34 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/news/kelina-hospital-team-just-after-holep-in-april-2021/>
2021-12-13 17:19:34 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/healthcare/staghorn-culculi-what-you-should-know/>
2021-12-13 17:19:34 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/oral-habits-and-crooked-teeth/>
2021-12-13 17:19:34 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/news/medical-supplies-donated-to-kelina-hospital/>
2021-12-13 17:19:34 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/a-stitch-in-time/>
2021-12-13 17:19:34 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/news/surgical-aid-program-2020-report/>
2021-12-13 17:19:34 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/does-increased-psa-mean-prostate-cancer/>
2021-12-13 17:19:35 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/10/06/ageing-beautifully/>
2021-12-13 17:19:35 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/10/06/beam-balance-food-or-multivitamins/>
2021-12-13 17:19:35 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/10/05/must-everyone-exercise/>
2021-12-13 17:19:35 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/10/05/sounding-the-drums-of-war-against-obesity/>
2021-12-13 17:19:35 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/10/02/introducing-obesitys-nuclear-extended-family-members/>
2021-12-13 17:19:35 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/10/02/who-classifies-as-obese/>
2021-12-13 17:19:35 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/09/24/how-not-to-take-a-life-yours/>
2021-12-13 17:19:35 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/09/11/jedi-jedi-and-you/>
2021-12-13 17:19:35 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/09/11/herbal-concoctions-the-good-the-bad-the-downright-ugly/>
2021-12-13 17:19:35 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/09/01/incessant-body-pains-why/>
2021-12-13 17:19:39 [scrapy.crawler] INFO: Received SIGINT, shutting down gracefully. Send again to force 
2021-12-13 17:19:39 [scrapy.core.engine] INFO: Closing spider (shutdown)
2021-12-13 17:19:39 [scrapy.core.engine] INFO: Closing spider (shutdown)
2021-12-13 17:19:40 [scrapy.crawler] INFO: Received SIGINT twice, forcing unclean shutdown
2021-12-14 09:59:36 [scrapy.utils.log] INFO: Scrapy 2.5.0 started (bot: HealthNewsScraper)
2021-12-14 09:59:36 [scrapy.utils.log] INFO: Versions: lxml 4.6.3.0, libxml2 2.9.5, cssselect 1.1.0, parsel 1.6.0, w3lib 1.22.0, Twisted 21.7.0, Python 3.9.5 (tags/v3.9.5:0a7dcbd, May  3 2021, 17:27:52) [MSC v.1928 64 bit (AMD64)], pyOpenSSL 20.0.1 (OpenSSL 1.1.1k  25 Mar 2021), cryptography 3.4.7, Platform Windows-10-10.0.19042-SP0
2021-12-14 09:59:36 [scrapy.crawler] INFO: Overridden settings:
{'BOT_NAME': 'HealthNewsScraper',
 'CONCURRENT_REQUESTS': 8,
 'CONCURRENT_REQUESTS_PER_IP': 8,
 'DOWNLOAD_DELAY': 5,
 'FEED_EXPORT_ENCODING': 'utf-8',
 'FEED_EXPORT_FIELDS': ['link',
                        'title',
                        'body',
                        'date_published',
                        'date_scraped'],
 'LOG_ENABLED': False,
 'LOG_FILE': './HealthNewsScraper/logs/scrapelogs.jl',
 'LOG_LEVEL': 20,
 'NEWSPIDER_MODULE': 'HealthNewsScraper.spiders',
 'ROBOTSTXT_OBEY': True,
 'SPIDER_MODULES': ['HealthNewsScraper.spiders']}
2021-12-14 09:59:36 [scrapy.extensions.telnet] INFO: Telnet Password: a5d0b906a4c4598e
2021-12-14 09:59:36 [scrapy.middleware] INFO: Enabled extensions:
['scrapy.extensions.corestats.CoreStats',
 'scrapy.extensions.telnet.TelnetConsole',
 'scrapy.extensions.feedexport.FeedExporter',
 'scrapy.extensions.logstats.LogStats']
2021-12-14 09:59:36 [scrapy.middleware] INFO: Enabled downloader middlewares:
['scrapy.downloadermiddlewares.robotstxt.RobotsTxtMiddleware',
 'scrapy.downloadermiddlewares.httpauth.HttpAuthMiddleware',
 'scrapy.downloadermiddlewares.downloadtimeout.DownloadTimeoutMiddleware',
 'scrapy.downloadermiddlewares.defaultheaders.DefaultHeadersMiddleware',
 'scrapy.downloadermiddlewares.useragent.UserAgentMiddleware',
 'scrapy.downloadermiddlewares.retry.RetryMiddleware',
 'scrapy.downloadermiddlewares.redirect.MetaRefreshMiddleware',
 'scrapy.downloadermiddlewares.httpcompression.HttpCompressionMiddleware',
 'scrapy.downloadermiddlewares.redirect.RedirectMiddleware',
 'scrapy.downloadermiddlewares.cookies.CookiesMiddleware',
 'scrapy.downloadermiddlewares.httpproxy.HttpProxyMiddleware',
 'scrapy.downloadermiddlewares.stats.DownloaderStats']
2021-12-14 09:59:36 [scrapy.middleware] INFO: Enabled spider middlewares:
['scrapy_deltafetch.DeltaFetch',
 'scrapy.spidermiddlewares.httperror.HttpErrorMiddleware',
 'scrapy_magicfields.MagicFieldsMiddleware',
 'scrapy.spidermiddlewares.offsite.OffsiteMiddleware',
 'HealthNewsScraper.middlewares.HealthnewsscraperSpiderMiddleware',
 'scrapy.spidermiddlewares.referer.RefererMiddleware',
 'scrapy.spidermiddlewares.urllength.UrlLengthMiddleware',
 'scrapy.spidermiddlewares.depth.DepthMiddleware']
2021-12-14 09:59:36 [scrapy.middleware] INFO: Enabled item pipelines:
['HealthNewsScraper.pipelines.StatsWriterPipeline']
2021-12-14 09:59:36 [scrapy.core.engine] INFO: Spider opened
2021-12-14 09:59:36 [scrapy.extensions.logstats] INFO: Crawled 0 pages (at 0 pages/min), scraped 0 items (at 0 items/min)
2021-12-14 09:59:36 [kelinahospital] INFO: Spider opened: kelinahospital
2021-12-14 09:59:36 [scrapy.extensions.telnet] INFO: Telnet console listening on 127.0.0.1:6023
2021-12-14 09:59:36 [scrapy.crawler] INFO: Overridden settings:
{'BOT_NAME': 'HealthNewsScraper',
 'CONCURRENT_REQUESTS': 8,
 'CONCURRENT_REQUESTS_PER_IP': 8,
 'DOWNLOAD_DELAY': 5,
 'FEED_EXPORT_ENCODING': 'utf-8',
 'FEED_EXPORT_FIELDS': ['link',
                        'title',
                        'body',
                        'date_published',
                        'date_scraped'],
 'LOG_ENABLED': False,
 'LOG_FILE': './HealthNewsScraper/logs/scrapelogs.jl',
 'LOG_LEVEL': 20,
 'NEWSPIDER_MODULE': 'HealthNewsScraper.spiders',
 'ROBOTSTXT_OBEY': True,
 'SPIDER_MODULES': ['HealthNewsScraper.spiders']}
2021-12-14 09:59:36 [scrapy.extensions.telnet] INFO: Telnet Password: ea1cb77336d33664
2021-12-14 09:59:36 [scrapy.middleware] INFO: Enabled extensions:
['scrapy.extensions.corestats.CoreStats',
 'scrapy.extensions.telnet.TelnetConsole',
 'scrapy.extensions.feedexport.FeedExporter',
 'scrapy.extensions.logstats.LogStats']
2021-12-14 09:59:36 [scrapy.middleware] INFO: Enabled downloader middlewares:
['scrapy.downloadermiddlewares.robotstxt.RobotsTxtMiddleware',
 'scrapy.downloadermiddlewares.httpauth.HttpAuthMiddleware',
 'scrapy.downloadermiddlewares.downloadtimeout.DownloadTimeoutMiddleware',
 'scrapy.downloadermiddlewares.defaultheaders.DefaultHeadersMiddleware',
 'scrapy.downloadermiddlewares.useragent.UserAgentMiddleware',
 'scrapy.downloadermiddlewares.retry.RetryMiddleware',
 'scrapy.downloadermiddlewares.redirect.MetaRefreshMiddleware',
 'scrapy.downloadermiddlewares.httpcompression.HttpCompressionMiddleware',
 'scrapy.downloadermiddlewares.redirect.RedirectMiddleware',
 'scrapy.downloadermiddlewares.cookies.CookiesMiddleware',
 'scrapy.downloadermiddlewares.httpproxy.HttpProxyMiddleware',
 'scrapy.downloadermiddlewares.stats.DownloaderStats']
2021-12-14 09:59:36 [scrapy.middleware] INFO: Enabled spider middlewares:
['scrapy_deltafetch.DeltaFetch',
 'scrapy.spidermiddlewares.httperror.HttpErrorMiddleware',
 'scrapy_magicfields.MagicFieldsMiddleware',
 'scrapy.spidermiddlewares.offsite.OffsiteMiddleware',
 'HealthNewsScraper.middlewares.HealthnewsscraperSpiderMiddleware',
 'scrapy.spidermiddlewares.referer.RefererMiddleware',
 'scrapy.spidermiddlewares.urllength.UrlLengthMiddleware',
 'scrapy.spidermiddlewares.depth.DepthMiddleware']
2021-12-14 09:59:36 [scrapy.middleware] INFO: Enabled item pipelines:
['HealthNewsScraper.pipelines.StatsWriterPipeline']
2021-12-14 09:59:36 [scrapy.core.engine] INFO: Spider opened
2021-12-14 09:59:36 [scrapy.extensions.logstats] INFO: Crawled 0 pages (at 0 pages/min), scraped 0 items (at 0 items/min)
2021-12-14 09:59:36 [HCIHealthcare] INFO: Spider opened: HCIHealthcare
2021-12-14 09:59:36 [scrapy.extensions.telnet] INFO: Telnet console listening on 127.0.0.1:6024
2021-12-14 09:59:40 [py.warnings] WARNING: c:\users\oluwa\downloads\data science ii\fastapi\venv\lib\site-packages\scrapy_magicfields\middleware.py:110: ScrapyDeprecationWarning: scrapy.item.BaseItem is deprecated, please use scrapy.item.Item instead
  if isinstance(_res, (BaseItem, dict)):

2021-12-14 09:59:40 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/news/surgical_aid_program_2021/>
2021-12-14 09:59:40 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/healthcare/composition-of-uroliths-seen-in-patients-in-abuja-nigeria-a-single-centre-retrospective-analysis-of-155-stones/>
2021-12-14 09:59:40 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/initial-experience-with-holmium-laser-enucleation-of-the-prostate-in-a-urology-specialist-hospital-in-nigeria/>
2021-12-14 09:59:40 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/news/kelina-hospital-team-just-after-holep-in-april-2021/>
2021-12-14 09:59:40 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/healthcare/staghorn-culculi-what-you-should-know/>
2021-12-14 09:59:40 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/oral-habits-and-crooked-teeth/>
2021-12-14 09:59:40 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/news/medical-supplies-donated-to-kelina-hospital/>
2021-12-14 09:59:40 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/a-stitch-in-time/>
2021-12-14 09:59:40 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/news/surgical-aid-program-2020-report/>
2021-12-14 09:59:40 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/does-increased-psa-mean-prostate-cancer/>
2021-12-14 09:59:40 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/10/06/ageing-beautifully/>
2021-12-14 09:59:40 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/10/06/beam-balance-food-or-multivitamins/>
2021-12-14 09:59:40 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/10/05/must-everyone-exercise/>
2021-12-14 09:59:40 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/10/05/sounding-the-drums-of-war-against-obesity/>
2021-12-14 09:59:40 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/10/02/introducing-obesitys-nuclear-extended-family-members/>
2021-12-14 09:59:40 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/10/02/who-classifies-as-obese/>
2021-12-14 09:59:40 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/09/24/how-not-to-take-a-life-yours/>
2021-12-14 09:59:40 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/09/11/jedi-jedi-and-you/>
2021-12-14 09:59:40 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/09/11/herbal-concoctions-the-good-the-bad-the-downright-ugly/>
2021-12-14 09:59:40 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/09/01/incessant-body-pains-why/>
2021-12-14 09:59:44 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/news/surgical-outreach-2020/>
2021-12-14 09:59:44 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/newsletters/capacity-building-efforts-at-kelina-hospital/>
2021-12-14 09:59:44 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/a-thought-on-breast-cancer/>
2021-12-14 09:59:44 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/aesthetic-fillings/>
2021-12-14 09:59:44 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/news/invitation-for-surgical-outreach-programme-2019/>
2021-12-14 09:59:44 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/endometriosis/>
2021-12-14 09:59:44 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/fibroids-meaning-and-symptoms/>
2021-12-14 09:59:44 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/surgeons-notes-how-long-is-my-surgery-going-to-take/>
2021-12-14 09:59:44 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/surgeons-notes-foreign-bodies-in-the-ear/>
2021-12-14 09:59:44 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/urinary-retention-common-misconceptions-symptoms-and-treatment/>
2021-12-14 09:59:47 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/08/25/managing-your-health-under-a-tough-boss/>
2021-12-14 09:59:47 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/08/17/what-malaria-is-not/>
2021-12-14 09:59:47 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/08/14/not-everything-is-malaria/>
2021-12-14 09:59:47 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/08/10/frequent-diarrhea-in-infants-toddlers-what-are-we-missing/>
2021-12-14 09:59:47 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/08/03/breastfeeding-only-for-babies/>
2021-12-14 09:59:47 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2016/12/07/how-lack-of-sleep-harms-circulation/>
2021-12-14 09:59:47 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2016/09/28/what-causes-kidney-stones/>
2021-12-14 09:59:47 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2016/09/28/room-temperature-affects-women-differently-than-men/>
2021-12-14 09:59:47 [scrapy.core.engine] INFO: Closing spider (finished)
2021-12-14 09:59:47 [scrapy.statscollectors] INFO: Dumping Scrapy stats:
{'deltafetch/skipped': 18,
 'downloader/request_bytes': 756,
 'downloader/request_count': 3,
 'downloader/request_method_count/GET': 3,
 'downloader/response_bytes': 80447,
 'downloader/response_count': 3,
 'downloader/response_status_count/200': 3,
 'elapsed_time_seconds': 10.290443,
 'finish_reason': 'finished',
 'finish_time': datetime.datetime(2021, 12, 14, 8, 59, 47, 68519),
 'httpcompression/response_bytes': 336620,
 'httpcompression/response_count': 3,
 'log_count/INFO': 49,
 'log_count/WARNING': 1,
 'request_depth_max': 2,
 'response_received_count': 3,
 'robotstxt/request_count': 1,
 'robotstxt/response_count': 1,
 'robotstxt/response_status_count/200': 1,
 'scheduler/dequeued': 2,
 'scheduler/dequeued/memory': 2,
 'scheduler/enqueued': 2,
 'scheduler/enqueued/memory': 2,
 'start_time': datetime.datetime(2021, 12, 14, 8, 59, 36, 778076)}
2021-12-14 09:59:47 [scrapy.core.engine] INFO: Spider closed (finished)
2021-12-14 09:59:51 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/surgeons-notes-the-importance-of-seeing-your-doctor-early/>
2021-12-14 09:59:51 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/minimal-access-surgeries-making-care-available-to-patients-with-diabetes-and-hypertension/>
2021-12-14 09:59:51 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/surgeons-notes-a-stitch-in-time/>
2021-12-14 09:59:51 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/news/kelina-hospital-acquires-new-plasma-sterilizer/>
2021-12-14 09:59:51 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/cervical-incompetence/>
2021-12-14 09:59:51 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/herniorrhaphy/>
2021-12-14 09:59:51 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/news/announcement/>
2021-12-14 09:59:51 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/aphthous-ulcers/>
2021-12-14 09:59:51 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/gum-diseases-scaling-polishing/>
2021-12-14 09:59:51 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/female-genital-mutilation-separating-the-myth-from-the-matter/>
2021-12-14 09:59:57 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/when-the-baby-isnt-kicking-adequately-what-to-do/>
2021-12-14 09:59:57 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/prostate-cancer/>
2021-12-14 09:59:57 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/danger-causes-and-treatment-of-testicular-torsion/>
2021-12-14 09:59:57 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/benign-prostatic-hyperplasia/>
2021-12-14 09:59:57 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/post-partum-hemorrhage-and-its-management/>
2021-12-14 09:59:57 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/tips-for-better-teeth-care/>
2021-12-14 09:59:57 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/news/images-from-laparopcopic-choleycystectomy-of-a-patient-with-over-600-gall-stones/>
2021-12-14 09:59:57 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/laser-prostate-surgery-the-new-thing-in-town-at-kelina-hospital/>
2021-12-14 09:59:57 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/tooth-decay-signs-symptoms-causes-prevention-and-treatment/>
2021-12-14 09:59:57 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/what-you-need-to-know-about-ectopic-pregnancy/>
2021-12-14 10:00:04 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/press-release-surgical-aid-foundation-partners-with-kelina-hospital-in-2018-surgical-outreach-programme/>
2021-12-14 10:00:04 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/rirs_with_lumenis_p120h/>
2021-12-14 10:00:04 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/invitation-for-surgical-outreach-program-2018/>
2021-12-14 10:00:04 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/surgical-aid-foundation/>
2021-12-14 10:00:04 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/lithoclast-machine/>
2021-12-14 10:00:04 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/enlarged-prostate-symptoms-diagnosis-and-treatment-in-kelina/>
2021-12-14 10:00:04 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/hepatitis-b-infection/>
2021-12-14 10:00:04 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/first-laparoscopic-pyeloplasty-2018/>
2021-12-14 10:00:04 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/news/new-consultant-gynaelocologist/>
2021-12-14 10:00:04 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/annual-surgical-outreach/>
2021-12-14 10:00:10 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/kelina-hospital-updates-equipment/>
2021-12-14 10:00:10 [scrapy.core.engine] INFO: Closing spider (finished)
2021-12-14 10:00:10 [scrapy.statscollectors] INFO: Dumping Scrapy stats:
{'deltafetch/skipped': 51,
 'downloader/request_bytes': 2295,
 'downloader/request_count': 7,
 'downloader/request_method_count/GET': 7,
 'downloader/response_bytes': 105730,
 'downloader/response_count': 7,
 'downloader/response_status_count/200': 7,
 'elapsed_time_seconds': 33.715172,
 'finish_reason': 'finished',
 'finish_time': datetime.datetime(2021, 12, 14, 9, 0, 10, 467247),
 'httpcompression/response_bytes': 424524,
 'httpcompression/response_count': 7,
 'log_count/INFO': 93,
 'log_count/WARNING': 1,
 'request_depth_max': 6,
 'response_received_count': 7,
 'robotstxt/request_count': 1,
 'robotstxt/response_count': 1,
 'robotstxt/response_status_count/200': 1,
 'scheduler/dequeued': 6,
 'scheduler/dequeued/memory': 6,
 'scheduler/enqueued': 6,
 'scheduler/enqueued/memory': 6,
 'start_time': datetime.datetime(2021, 12, 14, 8, 59, 36, 752075)}
2021-12-14 10:00:10 [scrapy.core.engine] INFO: Spider closed (finished)
2021-12-14 10:15:45 [scrapy.utils.log] INFO: Scrapy 2.5.0 started (bot: HealthNewsScraper)
2021-12-14 10:15:45 [scrapy.utils.log] INFO: Versions: lxml 4.6.3.0, libxml2 2.9.5, cssselect 1.1.0, parsel 1.6.0, w3lib 1.22.0, Twisted 21.7.0, Python 3.9.5 (tags/v3.9.5:0a7dcbd, May  3 2021, 17:27:52) [MSC v.1928 64 bit (AMD64)], pyOpenSSL 20.0.1 (OpenSSL 1.1.1k  25 Mar 2021), cryptography 3.4.7, Platform Windows-10-10.0.19042-SP0
2021-12-14 10:15:45 [scrapy.crawler] INFO: Overridden settings:
{'BOT_NAME': 'HealthNewsScraper',
 'CONCURRENT_REQUESTS': 8,
 'CONCURRENT_REQUESTS_PER_IP': 8,
 'DOWNLOAD_DELAY': 5,
 'FEED_EXPORT_ENCODING': 'utf-8',
 'FEED_EXPORT_FIELDS': ['link',
                        'title',
                        'body',
                        'date_published',
                        'date_scraped'],
 'LOG_ENABLED': False,
 'LOG_FILE': './HealthNewsScraper/logs/scrapelogs.jl',
 'LOG_LEVEL': 20,
 'NEWSPIDER_MODULE': 'HealthNewsScraper.spiders',
 'ROBOTSTXT_OBEY': True,
 'SPIDER_MODULES': ['HealthNewsScraper.spiders']}
2021-12-14 10:15:45 [scrapy.extensions.telnet] INFO: Telnet Password: ccbfbaa15cc6674d
2021-12-14 10:15:45 [scrapy.middleware] INFO: Enabled extensions:
['scrapy.extensions.corestats.CoreStats',
 'scrapy.extensions.telnet.TelnetConsole',
 'scrapy.extensions.feedexport.FeedExporter',
 'scrapy.extensions.logstats.LogStats']
2021-12-14 10:15:45 [scrapy.middleware] INFO: Enabled downloader middlewares:
['scrapy.downloadermiddlewares.robotstxt.RobotsTxtMiddleware',
 'scrapy.downloadermiddlewares.httpauth.HttpAuthMiddleware',
 'scrapy.downloadermiddlewares.downloadtimeout.DownloadTimeoutMiddleware',
 'scrapy.downloadermiddlewares.defaultheaders.DefaultHeadersMiddleware',
 'scrapy.downloadermiddlewares.useragent.UserAgentMiddleware',
 'scrapy.downloadermiddlewares.retry.RetryMiddleware',
 'scrapy.downloadermiddlewares.redirect.MetaRefreshMiddleware',
 'scrapy.downloadermiddlewares.httpcompression.HttpCompressionMiddleware',
 'scrapy.downloadermiddlewares.redirect.RedirectMiddleware',
 'scrapy.downloadermiddlewares.cookies.CookiesMiddleware',
 'scrapy.downloadermiddlewares.httpproxy.HttpProxyMiddleware',
 'scrapy.downloadermiddlewares.stats.DownloaderStats']
2021-12-14 10:15:45 [scrapy.middleware] INFO: Enabled spider middlewares:
['scrapy_deltafetch.DeltaFetch',
 'scrapy.spidermiddlewares.httperror.HttpErrorMiddleware',
 'scrapy_magicfields.MagicFieldsMiddleware',
 'scrapy.spidermiddlewares.offsite.OffsiteMiddleware',
 'HealthNewsScraper.middlewares.HealthnewsscraperSpiderMiddleware',
 'scrapy.spidermiddlewares.referer.RefererMiddleware',
 'scrapy.spidermiddlewares.urllength.UrlLengthMiddleware',
 'scrapy.spidermiddlewares.depth.DepthMiddleware']
2021-12-14 10:15:45 [scrapy.middleware] INFO: Enabled item pipelines:
['HealthNewsScraper.pipelines.StatsWriterPipeline']
2021-12-14 10:15:45 [scrapy.core.engine] INFO: Spider opened
2021-12-14 10:15:45 [scrapy.extensions.logstats] INFO: Crawled 0 pages (at 0 pages/min), scraped 0 items (at 0 items/min)
2021-12-14 10:15:45 [kelinahospital] INFO: Spider opened: kelinahospital
2021-12-14 10:15:45 [scrapy.extensions.telnet] INFO: Telnet console listening on 127.0.0.1:6023
2021-12-14 10:15:45 [scrapy.crawler] INFO: Overridden settings:
{'BOT_NAME': 'HealthNewsScraper',
 'CONCURRENT_REQUESTS': 8,
 'CONCURRENT_REQUESTS_PER_IP': 8,
 'DOWNLOAD_DELAY': 5,
 'FEED_EXPORT_ENCODING': 'utf-8',
 'FEED_EXPORT_FIELDS': ['link',
                        'title',
                        'body',
                        'date_published',
                        'date_scraped'],
 'LOG_ENABLED': False,
 'LOG_FILE': './HealthNewsScraper/logs/scrapelogs.jl',
 'LOG_LEVEL': 20,
 'NEWSPIDER_MODULE': 'HealthNewsScraper.spiders',
 'ROBOTSTXT_OBEY': True,
 'SPIDER_MODULES': ['HealthNewsScraper.spiders']}
2021-12-14 10:15:45 [scrapy.extensions.telnet] INFO: Telnet Password: 80368612885314c3
2021-12-14 10:15:45 [scrapy.middleware] INFO: Enabled extensions:
['scrapy.extensions.corestats.CoreStats',
 'scrapy.extensions.telnet.TelnetConsole',
 'scrapy.extensions.feedexport.FeedExporter',
 'scrapy.extensions.logstats.LogStats']
2021-12-14 10:15:45 [scrapy.middleware] INFO: Enabled downloader middlewares:
['scrapy.downloadermiddlewares.robotstxt.RobotsTxtMiddleware',
 'scrapy.downloadermiddlewares.httpauth.HttpAuthMiddleware',
 'scrapy.downloadermiddlewares.downloadtimeout.DownloadTimeoutMiddleware',
 'scrapy.downloadermiddlewares.defaultheaders.DefaultHeadersMiddleware',
 'scrapy.downloadermiddlewares.useragent.UserAgentMiddleware',
 'scrapy.downloadermiddlewares.retry.RetryMiddleware',
 'scrapy.downloadermiddlewares.redirect.MetaRefreshMiddleware',
 'scrapy.downloadermiddlewares.httpcompression.HttpCompressionMiddleware',
 'scrapy.downloadermiddlewares.redirect.RedirectMiddleware',
 'scrapy.downloadermiddlewares.cookies.CookiesMiddleware',
 'scrapy.downloadermiddlewares.httpproxy.HttpProxyMiddleware',
 'scrapy.downloadermiddlewares.stats.DownloaderStats']
2021-12-14 10:15:45 [scrapy.middleware] INFO: Enabled spider middlewares:
['scrapy_deltafetch.DeltaFetch',
 'scrapy.spidermiddlewares.httperror.HttpErrorMiddleware',
 'scrapy_magicfields.MagicFieldsMiddleware',
 'scrapy.spidermiddlewares.offsite.OffsiteMiddleware',
 'HealthNewsScraper.middlewares.HealthnewsscraperSpiderMiddleware',
 'scrapy.spidermiddlewares.referer.RefererMiddleware',
 'scrapy.spidermiddlewares.urllength.UrlLengthMiddleware',
 'scrapy.spidermiddlewares.depth.DepthMiddleware']
2021-12-14 10:15:45 [scrapy.middleware] INFO: Enabled item pipelines:
['HealthNewsScraper.pipelines.StatsWriterPipeline']
2021-12-14 10:15:45 [scrapy.core.engine] INFO: Spider opened
2021-12-14 10:15:45 [scrapy.extensions.logstats] INFO: Crawled 0 pages (at 0 pages/min), scraped 0 items (at 0 items/min)
2021-12-14 10:15:45 [HCIHealthcare] INFO: Spider opened: HCIHealthcare
2021-12-14 10:15:45 [scrapy.extensions.telnet] INFO: Telnet console listening on 127.0.0.1:6024
2021-12-14 10:15:49 [py.warnings] WARNING: c:\users\oluwa\downloads\data science ii\fastapi\venv\lib\site-packages\scrapy_magicfields\middleware.py:110: ScrapyDeprecationWarning: scrapy.item.BaseItem is deprecated, please use scrapy.item.Item instead
  if isinstance(_res, (BaseItem, dict)):

2021-12-14 10:15:49 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/news/surgical_aid_program_2021/>
2021-12-14 10:15:49 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/healthcare/composition-of-uroliths-seen-in-patients-in-abuja-nigeria-a-single-centre-retrospective-analysis-of-155-stones/>
2021-12-14 10:15:49 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/initial-experience-with-holmium-laser-enucleation-of-the-prostate-in-a-urology-specialist-hospital-in-nigeria/>
2021-12-14 10:15:49 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/news/kelina-hospital-team-just-after-holep-in-april-2021/>
2021-12-14 10:15:49 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/healthcare/staghorn-culculi-what-you-should-know/>
2021-12-14 10:15:49 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/oral-habits-and-crooked-teeth/>
2021-12-14 10:15:49 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/news/medical-supplies-donated-to-kelina-hospital/>
2021-12-14 10:15:49 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/a-stitch-in-time/>
2021-12-14 10:15:49 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/news/surgical-aid-program-2020-report/>
2021-12-14 10:15:49 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/does-increased-psa-mean-prostate-cancer/>
2021-12-14 10:15:50 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/10/06/ageing-beautifully/>
2021-12-14 10:15:50 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/10/06/beam-balance-food-or-multivitamins/>
2021-12-14 10:15:50 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/10/05/must-everyone-exercise/>
2021-12-14 10:15:50 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/10/05/sounding-the-drums-of-war-against-obesity/>
2021-12-14 10:15:50 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/10/02/introducing-obesitys-nuclear-extended-family-members/>
2021-12-14 10:15:50 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/10/02/who-classifies-as-obese/>
2021-12-14 10:15:50 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/09/24/how-not-to-take-a-life-yours/>
2021-12-14 10:15:50 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/09/11/jedi-jedi-and-you/>
2021-12-14 10:15:50 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/09/11/herbal-concoctions-the-good-the-bad-the-downright-ugly/>
2021-12-14 10:15:50 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/09/01/incessant-body-pains-why/>
2021-12-14 10:15:54 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/news/surgical-outreach-2020/>
2021-12-14 10:15:54 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/newsletters/capacity-building-efforts-at-kelina-hospital/>
2021-12-14 10:15:54 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/a-thought-on-breast-cancer/>
2021-12-14 10:15:54 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/aesthetic-fillings/>
2021-12-14 10:15:54 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/news/invitation-for-surgical-outreach-programme-2019/>
2021-12-14 10:15:54 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/endometriosis/>
2021-12-14 10:15:54 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/fibroids-meaning-and-symptoms/>
2021-12-14 10:15:54 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/surgeons-notes-how-long-is-my-surgery-going-to-take/>
2021-12-14 10:15:54 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/surgeons-notes-foreign-bodies-in-the-ear/>
2021-12-14 10:15:54 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/urinary-retention-common-misconceptions-symptoms-and-treatment/>
2021-12-14 10:15:57 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/08/25/managing-your-health-under-a-tough-boss/>
2021-12-14 10:15:57 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/08/17/what-malaria-is-not/>
2021-12-14 10:15:57 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/08/14/not-everything-is-malaria/>
2021-12-14 10:15:57 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/08/10/frequent-diarrhea-in-infants-toddlers-what-are-we-missing/>
2021-12-14 10:15:57 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/08/03/breastfeeding-only-for-babies/>
2021-12-14 10:15:57 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2016/12/07/how-lack-of-sleep-harms-circulation/>
2021-12-14 10:15:57 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2016/09/28/what-causes-kidney-stones/>
2021-12-14 10:15:57 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2016/09/28/room-temperature-affects-women-differently-than-men/>
2021-12-14 10:15:57 [scrapy.core.engine] INFO: Closing spider (finished)
2021-12-14 10:15:57 [scrapy.statscollectors] INFO: Dumping Scrapy stats:
{'deltafetch/skipped': 18,
 'downloader/request_bytes': 756,
 'downloader/request_count': 3,
 'downloader/request_method_count/GET': 3,
 'downloader/response_bytes': 80358,
 'downloader/response_count': 3,
 'downloader/response_status_count/200': 3,
 'elapsed_time_seconds': 11.545531,
 'finish_reason': 'finished',
 'finish_time': datetime.datetime(2021, 12, 14, 9, 15, 57, 441234),
 'httpcompression/response_bytes': 336493,
 'httpcompression/response_count': 3,
 'log_count/INFO': 49,
 'log_count/WARNING': 1,
 'request_depth_max': 2,
 'response_received_count': 3,
 'robotstxt/request_count': 1,
 'robotstxt/response_count': 1,
 'robotstxt/response_status_count/200': 1,
 'scheduler/dequeued': 2,
 'scheduler/dequeued/memory': 2,
 'scheduler/enqueued': 2,
 'scheduler/enqueued/memory': 2,
 'start_time': datetime.datetime(2021, 12, 14, 9, 15, 45, 895703)}
2021-12-14 10:15:57 [scrapy.core.engine] INFO: Spider closed (finished)
2021-12-14 10:16:00 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/surgeons-notes-the-importance-of-seeing-your-doctor-early/>
2021-12-14 10:16:00 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/minimal-access-surgeries-making-care-available-to-patients-with-diabetes-and-hypertension/>
2021-12-14 10:16:00 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/surgeons-notes-a-stitch-in-time/>
2021-12-14 10:16:00 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/news/kelina-hospital-acquires-new-plasma-sterilizer/>
2021-12-14 10:16:00 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/cervical-incompetence/>
2021-12-14 10:16:00 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/herniorrhaphy/>
2021-12-14 10:16:00 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/news/announcement/>
2021-12-14 10:16:00 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/aphthous-ulcers/>
2021-12-14 10:16:00 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/gum-diseases-scaling-polishing/>
2021-12-14 10:16:00 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/female-genital-mutilation-separating-the-myth-from-the-matter/>
2021-12-14 10:16:14 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/when-the-baby-isnt-kicking-adequately-what-to-do/>
2021-12-14 10:16:14 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/prostate-cancer/>
2021-12-14 10:16:14 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/danger-causes-and-treatment-of-testicular-torsion/>
2021-12-14 10:16:14 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/benign-prostatic-hyperplasia/>
2021-12-14 10:16:14 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/post-partum-hemorrhage-and-its-management/>
2021-12-14 10:16:14 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/tips-for-better-teeth-care/>
2021-12-14 10:16:14 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/news/images-from-laparopcopic-choleycystectomy-of-a-patient-with-over-600-gall-stones/>
2021-12-14 10:16:14 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/laser-prostate-surgery-the-new-thing-in-town-at-kelina-hospital/>
2021-12-14 10:16:14 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/tooth-decay-signs-symptoms-causes-prevention-and-treatment/>
2021-12-14 10:16:14 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/what-you-need-to-know-about-ectopic-pregnancy/>
2021-12-14 10:16:15 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/press-release-surgical-aid-foundation-partners-with-kelina-hospital-in-2018-surgical-outreach-programme/>
2021-12-14 10:16:15 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/rirs_with_lumenis_p120h/>
2021-12-14 10:16:15 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/invitation-for-surgical-outreach-program-2018/>
2021-12-14 10:16:15 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/surgical-aid-foundation/>
2021-12-14 10:16:15 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/lithoclast-machine/>
2021-12-14 10:16:15 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/enlarged-prostate-symptoms-diagnosis-and-treatment-in-kelina/>
2021-12-14 10:16:15 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/hepatitis-b-infection/>
2021-12-14 10:16:15 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/first-laparoscopic-pyeloplasty-2018/>
2021-12-14 10:16:15 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/news/new-consultant-gynaelocologist/>
2021-12-14 10:16:15 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/annual-surgical-outreach/>
2021-12-14 10:16:22 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/kelina-hospital-updates-equipment/>
2021-12-14 10:16:22 [scrapy.core.engine] INFO: Closing spider (finished)
2021-12-14 10:16:22 [scrapy.statscollectors] INFO: Dumping Scrapy stats:
{'deltafetch/skipped': 51,
 'downloader/request_bytes': 2295,
 'downloader/request_count': 7,
 'downloader/request_method_count/GET': 7,
 'downloader/response_bytes': 105781,
 'downloader/response_count': 7,
 'downloader/response_status_count/200': 7,
 'elapsed_time_seconds': 36.415236,
 'finish_reason': 'finished',
 'finish_time': datetime.datetime(2021, 12, 14, 9, 16, 22, 290528),
 'httpcompression/response_bytes': 424524,
 'httpcompression/response_count': 7,
 'log_count/INFO': 93,
 'log_count/WARNING': 1,
 'request_depth_max': 6,
 'response_received_count': 7,
 'robotstxt/request_count': 1,
 'robotstxt/response_count': 1,
 'robotstxt/response_status_count/200': 1,
 'scheduler/dequeued': 6,
 'scheduler/dequeued/memory': 6,
 'scheduler/enqueued': 6,
 'scheduler/enqueued/memory': 6,
 'start_time': datetime.datetime(2021, 12, 14, 9, 15, 45, 875292)}
2021-12-14 10:16:22 [scrapy.core.engine] INFO: Spider closed (finished)
2021-12-14 10:17:04 [scrapy.crawler] INFO: Received SIGINT, shutting down gracefully. Send again to force 
2021-12-14 10:21:57 [scrapy.utils.log] INFO: Scrapy 2.5.0 started (bot: HealthNewsScraper)
2021-12-14 10:21:57 [scrapy.utils.log] INFO: Versions: lxml 4.6.3.0, libxml2 2.9.5, cssselect 1.1.0, parsel 1.6.0, w3lib 1.22.0, Twisted 21.7.0, Python 3.9.5 (tags/v3.9.5:0a7dcbd, May  3 2021, 17:27:52) [MSC v.1928 64 bit (AMD64)], pyOpenSSL 20.0.1 (OpenSSL 1.1.1k  25 Mar 2021), cryptography 3.4.7, Platform Windows-10-10.0.19042-SP0
2021-12-14 10:21:57 [scrapy.crawler] INFO: Overridden settings:
{'BOT_NAME': 'HealthNewsScraper',
 'CONCURRENT_REQUESTS': 8,
 'CONCURRENT_REQUESTS_PER_IP': 8,
 'DOWNLOAD_DELAY': 5,
 'FEED_EXPORT_ENCODING': 'utf-8',
 'FEED_EXPORT_FIELDS': ['link',
                        'title',
                        'body',
                        'date_published',
                        'date_scraped'],
 'LOG_ENABLED': False,
 'LOG_FILE': './HealthNewsScraper/logs/scrapelogs.jl',
 'LOG_LEVEL': 20,
 'NEWSPIDER_MODULE': 'HealthNewsScraper.spiders',
 'ROBOTSTXT_OBEY': True,
 'SPIDER_MODULES': ['HealthNewsScraper.spiders']}
2021-12-14 10:21:57 [scrapy.extensions.telnet] INFO: Telnet Password: 270ce6bd6b5856fb
2021-12-14 10:21:57 [scrapy.middleware] INFO: Enabled extensions:
['scrapy.extensions.corestats.CoreStats',
 'scrapy.extensions.telnet.TelnetConsole',
 'scrapy.extensions.feedexport.FeedExporter',
 'scrapy.extensions.logstats.LogStats']
2021-12-14 10:21:57 [scrapy.middleware] INFO: Enabled downloader middlewares:
['scrapy.downloadermiddlewares.robotstxt.RobotsTxtMiddleware',
 'scrapy.downloadermiddlewares.httpauth.HttpAuthMiddleware',
 'scrapy.downloadermiddlewares.downloadtimeout.DownloadTimeoutMiddleware',
 'scrapy.downloadermiddlewares.defaultheaders.DefaultHeadersMiddleware',
 'scrapy.downloadermiddlewares.useragent.UserAgentMiddleware',
 'scrapy.downloadermiddlewares.retry.RetryMiddleware',
 'scrapy.downloadermiddlewares.redirect.MetaRefreshMiddleware',
 'scrapy.downloadermiddlewares.httpcompression.HttpCompressionMiddleware',
 'scrapy.downloadermiddlewares.redirect.RedirectMiddleware',
 'scrapy.downloadermiddlewares.cookies.CookiesMiddleware',
 'scrapy.downloadermiddlewares.httpproxy.HttpProxyMiddleware',
 'scrapy.downloadermiddlewares.stats.DownloaderStats']
2021-12-14 10:21:57 [scrapy.middleware] INFO: Enabled spider middlewares:
['scrapy_deltafetch.DeltaFetch',
 'scrapy.spidermiddlewares.httperror.HttpErrorMiddleware',
 'scrapy_magicfields.MagicFieldsMiddleware',
 'scrapy.spidermiddlewares.offsite.OffsiteMiddleware',
 'HealthNewsScraper.middlewares.HealthnewsscraperSpiderMiddleware',
 'scrapy.spidermiddlewares.referer.RefererMiddleware',
 'scrapy.spidermiddlewares.urllength.UrlLengthMiddleware',
 'scrapy.spidermiddlewares.depth.DepthMiddleware']
2021-12-14 10:21:57 [scrapy.middleware] INFO: Enabled item pipelines:
['HealthNewsScraper.pipelines.StatsWriterPipeline']
2021-12-14 10:21:57 [scrapy.core.engine] INFO: Spider opened
2021-12-14 10:21:57 [scrapy.extensions.logstats] INFO: Crawled 0 pages (at 0 pages/min), scraped 0 items (at 0 items/min)
2021-12-14 10:21:57 [kelinahospital] INFO: Spider opened: kelinahospital
2021-12-14 10:21:57 [scrapy.extensions.telnet] INFO: Telnet console listening on 127.0.0.1:6023
2021-12-14 10:21:57 [scrapy.crawler] INFO: Overridden settings:
{'BOT_NAME': 'HealthNewsScraper',
 'CONCURRENT_REQUESTS': 8,
 'CONCURRENT_REQUESTS_PER_IP': 8,
 'DOWNLOAD_DELAY': 5,
 'FEED_EXPORT_ENCODING': 'utf-8',
 'FEED_EXPORT_FIELDS': ['link',
                        'title',
                        'body',
                        'date_published',
                        'date_scraped'],
 'LOG_ENABLED': False,
 'LOG_FILE': './HealthNewsScraper/logs/scrapelogs.jl',
 'LOG_LEVEL': 20,
 'NEWSPIDER_MODULE': 'HealthNewsScraper.spiders',
 'ROBOTSTXT_OBEY': True,
 'SPIDER_MODULES': ['HealthNewsScraper.spiders']}
2021-12-14 10:21:57 [scrapy.extensions.telnet] INFO: Telnet Password: 730bf7874b88bebb
2021-12-14 10:21:57 [scrapy.middleware] INFO: Enabled extensions:
['scrapy.extensions.corestats.CoreStats',
 'scrapy.extensions.telnet.TelnetConsole',
 'scrapy.extensions.feedexport.FeedExporter',
 'scrapy.extensions.logstats.LogStats']
2021-12-14 10:21:57 [scrapy.middleware] INFO: Enabled downloader middlewares:
['scrapy.downloadermiddlewares.robotstxt.RobotsTxtMiddleware',
 'scrapy.downloadermiddlewares.httpauth.HttpAuthMiddleware',
 'scrapy.downloadermiddlewares.downloadtimeout.DownloadTimeoutMiddleware',
 'scrapy.downloadermiddlewares.defaultheaders.DefaultHeadersMiddleware',
 'scrapy.downloadermiddlewares.useragent.UserAgentMiddleware',
 'scrapy.downloadermiddlewares.retry.RetryMiddleware',
 'scrapy.downloadermiddlewares.redirect.MetaRefreshMiddleware',
 'scrapy.downloadermiddlewares.httpcompression.HttpCompressionMiddleware',
 'scrapy.downloadermiddlewares.redirect.RedirectMiddleware',
 'scrapy.downloadermiddlewares.cookies.CookiesMiddleware',
 'scrapy.downloadermiddlewares.httpproxy.HttpProxyMiddleware',
 'scrapy.downloadermiddlewares.stats.DownloaderStats']
2021-12-14 10:21:57 [scrapy.middleware] INFO: Enabled spider middlewares:
['scrapy_deltafetch.DeltaFetch',
 'scrapy.spidermiddlewares.httperror.HttpErrorMiddleware',
 'scrapy_magicfields.MagicFieldsMiddleware',
 'scrapy.spidermiddlewares.offsite.OffsiteMiddleware',
 'HealthNewsScraper.middlewares.HealthnewsscraperSpiderMiddleware',
 'scrapy.spidermiddlewares.referer.RefererMiddleware',
 'scrapy.spidermiddlewares.urllength.UrlLengthMiddleware',
 'scrapy.spidermiddlewares.depth.DepthMiddleware']
2021-12-14 10:21:57 [scrapy.middleware] INFO: Enabled item pipelines:
['HealthNewsScraper.pipelines.StatsWriterPipeline']
2021-12-14 10:21:57 [scrapy.core.engine] INFO: Spider opened
2021-12-14 10:21:57 [scrapy.extensions.logstats] INFO: Crawled 0 pages (at 0 pages/min), scraped 0 items (at 0 items/min)
2021-12-14 10:21:57 [HCIHealthcare] INFO: Spider opened: HCIHealthcare
2021-12-14 10:21:57 [scrapy.extensions.telnet] INFO: Telnet console listening on 127.0.0.1:6024
2021-12-14 10:22:01 [py.warnings] WARNING: c:\users\oluwa\downloads\data science ii\fastapi\venv\lib\site-packages\scrapy_magicfields\middleware.py:110: ScrapyDeprecationWarning: scrapy.item.BaseItem is deprecated, please use scrapy.item.Item instead
  if isinstance(_res, (BaseItem, dict)):

2021-12-14 10:22:01 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/news/surgical_aid_program_2021/>
2021-12-14 10:22:01 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/healthcare/composition-of-uroliths-seen-in-patients-in-abuja-nigeria-a-single-centre-retrospective-analysis-of-155-stones/>
2021-12-14 10:22:01 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/initial-experience-with-holmium-laser-enucleation-of-the-prostate-in-a-urology-specialist-hospital-in-nigeria/>
2021-12-14 10:22:01 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/news/kelina-hospital-team-just-after-holep-in-april-2021/>
2021-12-14 10:22:01 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/healthcare/staghorn-culculi-what-you-should-know/>
2021-12-14 10:22:01 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/oral-habits-and-crooked-teeth/>
2021-12-14 10:22:01 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/news/medical-supplies-donated-to-kelina-hospital/>
2021-12-14 10:22:01 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/a-stitch-in-time/>
2021-12-14 10:22:01 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/news/surgical-aid-program-2020-report/>
2021-12-14 10:22:01 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/does-increased-psa-mean-prostate-cancer/>
2021-12-14 10:22:03 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/10/06/ageing-beautifully/>
2021-12-14 10:22:03 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/10/06/beam-balance-food-or-multivitamins/>
2021-12-14 10:22:03 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/10/05/must-everyone-exercise/>
2021-12-14 10:22:03 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/10/05/sounding-the-drums-of-war-against-obesity/>
2021-12-14 10:22:03 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/10/02/introducing-obesitys-nuclear-extended-family-members/>
2021-12-14 10:22:03 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/10/02/who-classifies-as-obese/>
2021-12-14 10:22:03 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/09/24/how-not-to-take-a-life-yours/>
2021-12-14 10:22:03 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/09/11/jedi-jedi-and-you/>
2021-12-14 10:22:03 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/09/11/herbal-concoctions-the-good-the-bad-the-downright-ugly/>
2021-12-14 10:22:03 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/09/01/incessant-body-pains-why/>
2021-12-14 10:22:08 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/news/surgical-outreach-2020/>
2021-12-14 10:22:08 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/newsletters/capacity-building-efforts-at-kelina-hospital/>
2021-12-14 10:22:08 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/a-thought-on-breast-cancer/>
2021-12-14 10:22:08 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/aesthetic-fillings/>
2021-12-14 10:22:08 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/news/invitation-for-surgical-outreach-programme-2019/>
2021-12-14 10:22:08 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/endometriosis/>
2021-12-14 10:22:08 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/fibroids-meaning-and-symptoms/>
2021-12-14 10:22:08 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/surgeons-notes-how-long-is-my-surgery-going-to-take/>
2021-12-14 10:22:08 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/surgeons-notes-foreign-bodies-in-the-ear/>
2021-12-14 10:22:08 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/urinary-retention-common-misconceptions-symptoms-and-treatment/>
2021-12-14 10:22:09 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/08/25/managing-your-health-under-a-tough-boss/>
2021-12-14 10:22:09 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/08/17/what-malaria-is-not/>
2021-12-14 10:22:09 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/08/14/not-everything-is-malaria/>
2021-12-14 10:22:09 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/08/10/frequent-diarrhea-in-infants-toddlers-what-are-we-missing/>
2021-12-14 10:22:09 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2020/08/03/breastfeeding-only-for-babies/>
2021-12-14 10:22:09 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2016/12/07/how-lack-of-sleep-harms-circulation/>
2021-12-14 10:22:09 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2016/09/28/what-causes-kidney-stones/>
2021-12-14 10:22:09 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.hcihealthcare.ng/2016/09/28/room-temperature-affects-women-differently-than-men/>
2021-12-14 10:22:09 [scrapy.core.engine] INFO: Closing spider (finished)
2021-12-14 10:22:09 [scrapy.statscollectors] INFO: Dumping Scrapy stats:
{'deltafetch/skipped': 18,
 'downloader/request_bytes': 756,
 'downloader/request_count': 3,
 'downloader/request_method_count/GET': 3,
 'downloader/response_bytes': 80187,
 'downloader/response_count': 3,
 'downloader/response_status_count/200': 3,
 'elapsed_time_seconds': 11.655307,
 'finish_reason': 'finished',
 'finish_time': datetime.datetime(2021, 12, 14, 9, 22, 9, 343027),
 'httpcompression/response_bytes': 336149,
 'httpcompression/response_count': 3,
 'log_count/INFO': 49,
 'log_count/WARNING': 1,
 'request_depth_max': 2,
 'response_received_count': 3,
 'robotstxt/request_count': 1,
 'robotstxt/response_count': 1,
 'robotstxt/response_status_count/200': 1,
 'scheduler/dequeued': 2,
 'scheduler/dequeued/memory': 2,
 'scheduler/enqueued': 2,
 'scheduler/enqueued/memory': 2,
 'start_time': datetime.datetime(2021, 12, 14, 9, 21, 57, 687720)}
2021-12-14 10:22:09 [scrapy.core.engine] INFO: Spider closed (finished)
2021-12-14 10:22:14 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/surgeons-notes-the-importance-of-seeing-your-doctor-early/>
2021-12-14 10:22:14 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/minimal-access-surgeries-making-care-available-to-patients-with-diabetes-and-hypertension/>
2021-12-14 10:22:14 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/surgeons-notes-a-stitch-in-time/>
2021-12-14 10:22:14 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/news/kelina-hospital-acquires-new-plasma-sterilizer/>
2021-12-14 10:22:14 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/cervical-incompetence/>
2021-12-14 10:22:14 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/herniorrhaphy/>
2021-12-14 10:22:14 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/news/announcement/>
2021-12-14 10:22:14 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/aphthous-ulcers/>
2021-12-14 10:22:14 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/gum-diseases-scaling-polishing/>
2021-12-14 10:22:14 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/female-genital-mutilation-separating-the-myth-from-the-matter/>
2021-12-14 10:22:21 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/when-the-baby-isnt-kicking-adequately-what-to-do/>
2021-12-14 10:22:21 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/prostate-cancer/>
2021-12-14 10:22:21 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/danger-causes-and-treatment-of-testicular-torsion/>
2021-12-14 10:22:21 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/benign-prostatic-hyperplasia/>
2021-12-14 10:22:21 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/post-partum-hemorrhage-and-its-management/>
2021-12-14 10:22:21 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/tips-for-better-teeth-care/>
2021-12-14 10:22:21 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/news/images-from-laparopcopic-choleycystectomy-of-a-patient-with-over-600-gall-stones/>
2021-12-14 10:22:21 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/laser-prostate-surgery-the-new-thing-in-town-at-kelina-hospital/>
2021-12-14 10:22:21 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/tooth-decay-signs-symptoms-causes-prevention-and-treatment/>
2021-12-14 10:22:21 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/what-you-need-to-know-about-ectopic-pregnancy/>
2021-12-14 10:22:25 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/press-release-surgical-aid-foundation-partners-with-kelina-hospital-in-2018-surgical-outreach-programme/>
2021-12-14 10:22:25 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/rirs_with_lumenis_p120h/>
2021-12-14 10:22:25 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/invitation-for-surgical-outreach-program-2018/>
2021-12-14 10:22:25 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/surgical-aid-foundation/>
2021-12-14 10:22:25 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/lithoclast-machine/>
2021-12-14 10:22:25 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/articles/enlarged-prostate-symptoms-diagnosis-and-treatment-in-kelina/>
2021-12-14 10:22:25 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/hepatitis-b-infection/>
2021-12-14 10:22:25 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/first-laparoscopic-pyeloplasty-2018/>
2021-12-14 10:22:25 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/news/new-consultant-gynaelocologist/>
2021-12-14 10:22:25 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/annual-surgical-outreach/>
2021-12-14 10:22:33 [scrapy_deltafetch.middleware] INFO: Ignoring already visited: <GET https://www.kelinahospital.com/uncategorized/kelina-hospital-updates-equipment/>
2021-12-14 10:22:33 [scrapy.core.engine] INFO: Closing spider (finished)
2021-12-14 10:22:33 [scrapy.statscollectors] INFO: Dumping Scrapy stats:
{'deltafetch/skipped': 51,
 'downloader/request_bytes': 2295,
 'downloader/request_count': 7,
 'downloader/request_method_count/GET': 7,
 'downloader/response_bytes': 105788,
 'downloader/response_count': 7,
 'downloader/response_status_count/200': 7,
 'elapsed_time_seconds': 35.659371,
 'finish_reason': 'finished',
 'finish_time': datetime.datetime(2021, 12, 14, 9, 22, 33, 329091),
 'httpcompression/response_bytes': 424524,
 'httpcompression/response_count': 7,
 'log_count/INFO': 93,
 'log_count/WARNING': 1,
 'request_depth_max': 6,
 'response_received_count': 7,
 'robotstxt/request_count': 1,
 'robotstxt/response_count': 1,
 'robotstxt/response_status_count/200': 1,
 'scheduler/dequeued': 6,
 'scheduler/dequeued/memory': 6,
 'scheduler/enqueued': 6,
 'scheduler/enqueued/memory': 6,
 'start_time': datetime.datetime(2021, 12, 14, 9, 21, 57, 669720)}
2021-12-14 10:22:33 [scrapy.core.engine] INFO: Spider closed (finished)
2021-12-15 15:56:33 [scrapy.utils.log] INFO: Scrapy 2.5.0 started (bot: HealthNewsScraper)
2021-12-15 15:56:33 [scrapy.utils.log] INFO: Versions: lxml 4.6.3.0, libxml2 2.9.5, cssselect 1.1.0, parsel 1.6.0, w3lib 1.22.0, Twisted 21.7.0, Python 3.9.5 (tags/v3.9.5:0a7dcbd, May  3 2021, 17:27:52) [MSC v.1928 64 bit (AMD64)], pyOpenSSL 20.0.1 (OpenSSL 1.1.1k  25 Mar 2021), cryptography 3.4.7, Platform Windows-10-10.0.19042-SP0
2021-12-15 15:56:33 [scrapy.crawler] INFO: Overridden settings:
{'BOT_NAME': 'HealthNewsScraper',
 'CONCURRENT_REQUESTS': 8,
 'CONCURRENT_REQUESTS_PER_IP': 8,
 'DOWNLOAD_DELAY': 5,
 'FEED_EXPORT_ENCODING': 'utf-8',
 'FEED_EXPORT_FIELDS': ['link',
                        'title',
                        'body',
                        'date_published',
                        'date_scraped'],
 'LOG_ENABLED': False,
 'LOG_FILE': './HealthNewsScraper/logs/scrapelogs.jl',
 'LOG_LEVEL': 20,
 'NEWSPIDER_MODULE': 'HealthNewsScraper.spiders',
 'ROBOTSTXT_OBEY': True,
 'SPIDER_MODULES': ['HealthNewsScraper.spiders']}
2021-12-15 15:56:33 [scrapy.extensions.telnet] INFO: Telnet Password: 12a53cceba8a31e0
2021-12-15 15:56:33 [scrapy.middleware] INFO: Enabled extensions:
['scrapy.extensions.corestats.CoreStats',
 'scrapy.extensions.telnet.TelnetConsole',
 'scrapy.extensions.feedexport.FeedExporter',
 'scrapy.extensions.logstats.LogStats']
2021-12-15 15:56:33 [scrapy.middleware] INFO: Enabled downloader middlewares:
['scrapy.downloadermiddlewares.robotstxt.RobotsTxtMiddleware',
 'scrapy.downloadermiddlewares.httpauth.HttpAuthMiddleware',
 'scrapy.downloadermiddlewares.downloadtimeout.DownloadTimeoutMiddleware',
 'scrapy.downloadermiddlewares.defaultheaders.DefaultHeadersMiddleware',
 'scrapy.downloadermiddlewares.useragent.UserAgentMiddleware',
 'scrapy.downloadermiddlewares.retry.RetryMiddleware',
 'scrapy.downloadermiddlewares.redirect.MetaRefreshMiddleware',
 'scrapy.downloadermiddlewares.httpcompression.HttpCompressionMiddleware',
 'scrapy.downloadermiddlewares.redirect.RedirectMiddleware',
 'scrapy.downloadermiddlewares.cookies.CookiesMiddleware',
 'scrapy.downloadermiddlewares.httpproxy.HttpProxyMiddleware',
 'scrapy.downloadermiddlewares.stats.DownloaderStats']
2021-12-15 15:56:33 [scrapy.middleware] INFO: Enabled spider middlewares:
['scrapy_deltafetch.DeltaFetch',
 'scrapy.spidermiddlewares.httperror.HttpErrorMiddleware',
 'scrapy_magicfields.MagicFieldsMiddleware',
 'scrapy.spidermiddlewares.offsite.OffsiteMiddleware',
 'HealthNewsScraper.middlewares.HealthnewsscraperSpiderMiddleware',
 'scrapy.spidermiddlewares.referer.RefererMiddleware',
 'scrapy.spidermiddlewares.urllength.UrlLengthMiddleware',
 'scrapy.spidermiddlewares.depth.DepthMiddleware']
2021-12-15 15:56:33 [scrapy.middleware] INFO: Enabled item pipelines:
['HealthNewsScraper.pipelines.MongoPipeline',
 'HealthNewsScraper.pipelines.StatsWriterPipeline']
2021-12-15 15:56:33 [scrapy.core.engine] INFO: Spider opened
2021-12-15 15:56:33 [scrapy.extensions.logstats] INFO: Crawled 0 pages (at 0 pages/min), scraped 0 items (at 0 items/min)
2021-12-15 15:56:34 [kelinahospital] INFO: Spider opened: kelinahospital
2021-12-15 15:56:34 [scrapy.extensions.telnet] INFO: Telnet console listening on 127.0.0.1:6023
2021-12-15 15:56:38 [py.warnings] WARNING: c:\users\oluwa\downloads\data science ii\fastapi\venv\lib\site-packages\scrapy_magicfields\middleware.py:110: ScrapyDeprecationWarning: scrapy.item.BaseItem is deprecated, please use scrapy.item.Item instead
  if isinstance(_res, (BaseItem, dict)):

2021-12-15 15:56:42 [py.warnings] WARNING: c:\users\oluwa\downloads\data science ii\fastapi\venv\lib\site-packages\scrapy\core\scraper.py:149: UserWarning: Unable to determine whether or not "KelinahospitalSpider.news_reader" is a generator with a return value. This will not prevent your code from working, but it prevents Scrapy from detecting potential issues in your implementation of "KelinahospitalSpider.news_reader". Please, report this in the Scrapy issue tracker (https://github.com/scrapy/scrapy/issues), including the code of "KelinahospitalSpider.news_reader"
  warn_on_generator_with_return_value(spider, callback)

2021-12-15 15:57:34 [scrapy.extensions.logstats] INFO: Crawled 10 pages (at 10 pages/min), scraped 7 items (at 7 items/min)
2021-12-15 15:58:34 [scrapy.extensions.logstats] INFO: Crawled 21 pages (at 11 pages/min), scraped 17 items (at 10 items/min)
2021-12-15 15:59:33 [scrapy.extensions.logstats] INFO: Crawled 31 pages (at 10 pages/min), scraped 25 items (at 8 items/min)
2021-12-15 16:00:34 [scrapy.extensions.logstats] INFO: Crawled 40 pages (at 9 pages/min), scraped 33 items (at 8 items/min)
2021-12-15 16:01:34 [scrapy.extensions.logstats] INFO: Crawled 50 pages (at 10 pages/min), scraped 43 items (at 10 items/min)
2021-12-15 16:02:22 [scrapy.core.engine] INFO: Closing spider (finished)
2021-12-15 16:02:22 [scrapy.extensions.feedexport] INFO: Stored jsonlines feed (51 items) in: ./HealthNewsScraper/scrapes/kh.jl
2021-12-15 16:02:22 [scrapy.statscollectors] INFO: Dumping Scrapy stats:
{'deltafetch/stored': 51,
 'downloader/request_bytes': 22249,
 'downloader/request_count': 58,
 'downloader/request_method_count/GET': 58,
 'downloader/response_bytes': 1016067,
 'downloader/response_count': 58,
 'downloader/response_status_count/200': 58,
 'elapsed_time_seconds': 348.068566,
 'feedexport/success_count/FileFeedStorage': 1,
 'finish_reason': 'finished',
 'finish_time': datetime.datetime(2021, 12, 15, 15, 2, 22, 64007),
 'httpcompression/response_bytes': 3733511,
 'httpcompression/response_count': 58,
 'item_scraped_count': 51,
 'log_count/INFO': 17,
 'log_count/WARNING': 2,
 'request_depth_max': 6,
 'response_received_count': 58,
 'robotstxt/request_count': 1,
 'robotstxt/response_count': 1,
 'robotstxt/response_status_count/200': 1,
 'scheduler/dequeued': 57,
 'scheduler/dequeued/memory': 57,
 'scheduler/enqueued': 57,
 'scheduler/enqueued/memory': 57,
 'start_time': datetime.datetime(2021, 12, 15, 14, 56, 33, 995441)}
2021-12-15 16:02:22 [scrapy.core.engine] INFO: Spider closed (finished)
2021-12-15 16:53:53 [scrapy.crawler] INFO: Received SIGINT, shutting down gracefully. Send again to force 
