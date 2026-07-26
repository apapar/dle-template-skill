# RSS Export

*DLE documentation topic #76*

The DataLife Engine engine also supports exporting news in RSS format. For visitors to receive the news export from the main page, you must use the following path.

With SEF URLs enabled:

`http://website.com/rss.xml` \- broadcast of the main RSS feed

`http://website.com/rssdzen.xml` \- broadcast of the RSS feed for the Zen service

Without SEF URLs:

`http://website.com/index.php?mod=rss` \- broadcast of the main RSS feed

`http://website.com/index.php?mod=rss&rssmode=dzen` \- broadcast of the RSS feed for the Zen service

**To export news from a specific category, use the following links**

With SEF URLs enabled:

`http://website.com/category-alias/rss.xml` \- broadcast of the main RSS feed

`http://website.com/category-alias/rssdzen.xml` \- broadcast of the RSS feed for the Zen service

Without SEF URLs:

`http://website.com/index.php?mod=rss&do=cat&category=category-alias` \- broadcast of the main RSS feed

`http://website.com/index.php?mod=rss&do=cat&rssmode=dzen&category=category-alias` \- broadcast of the RSS feed for the Zen service

**To export all news of a specific user, use the following links**

With SEF URLs enabled:

`http://website.com/user/username/rss.xml` \- broadcast of the main RSS feed

`http://website.com/user/username/rssdzen.xml` \- broadcast of the RSS feed for the Zen service

Without SEF URLs:

`http://website.com/index.php?mod=rss&subaction=allnews&user=username` \- broadcast of the main RSS feed

`http://website.com/index.php?mod=rss&subaction=allnews&rssmode=dzen&user=username` \- broadcast of the RSS feed for the Zen service

**To export news from a specific catalog, use the following links**

With SEF URLs enabled:

`http://website.com/catalog/identifier/rss.xml` \- broadcast of the main RSS feed

`http://website.com/catalog/identifier/rssdzen.xml` \- broadcast of the RSS feed for the Zen service

Without SEF URLs:

`http://website.com/index.php?mod=rss&catalog=identifier` \- broadcast of the main RSS feed

`http://website.com/index.php?mod=rss&rssmode=dzen&catalog=identifier` \- broadcast of the RSS feed for the Zen service
