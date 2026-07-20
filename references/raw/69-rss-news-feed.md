# RSS News Feed

*DLE documentation topic #69*

This template is located in the **templates/rss.tpl** file and is intended for configuring the output of your website RSS feed.

The following tags can be used in this template:

`[rss]` text `[/rss]` \- Output the enclosed text when using the standard RSS block.

`[dzen]` text `[/dzen]` \- Output the enclosed text when using the Zen news block.

`{title}` \- Outputs the news title

`{rsslink}` \- Outputs the full URL of the news item

`{rssauthor}` \- Outputs the news author

`{rssdate}` \- Outputs the news date

`{category}` \- Outputs the news category

`{short-story}` \- Outputs the short news text

`{images}` \- Outputs a set of images for Yandex News

`{full-story}` \- Outputs the full news text

You can also additionally use any tags supported by the **shortstory.tpl** short news output template, but you need to be careful not to break the RSS 2.0 output standard used for RSS publication feeds.
