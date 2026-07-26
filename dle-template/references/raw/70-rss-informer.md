# RSS Informer

*DLE documentation topic #70*

In this template, you can configure the output of your RSS informer. You assign the name of this template yourself in the admin panel when adding a new RSS informer. In this template, you can use the following tags:

`[link]`text `[/link]` \- forms a link to the partner's news item

`{link}` - intended to output only the URL of the link to the publication source page

`{title}` \- news title

`{news}` \- the news text itself

`{category}` \- outputs the category in which the news item is published in the RSS feed

`{author}` \- outputs the news author

`{date}` \- outputs the news date; the date format can be defined in the informer settings for each informer.

`{date=date format}`**-** outputs the date in the format specified in the tag. This allows you to output not only the full date but also its individual parts. The date format is defined according to the format accepted in PHP. For example, the tag `{date=d}` outputs the day of the month of publication of the news item or comment, the tag `{date=F}` outputs the month name, and the tag `{date=d-m-Y H:i}` outputs the full date and time.

`{image-x}` \- outputs the URL of images contained in the short news item, where x is the image number in the news item. For example, `{image-1}` will output the URL of the first image in the short news item

`[image-x]`text `[/image-x]`**-** outputs the text specified in the tags only if the image with number **X** is present in the news item
