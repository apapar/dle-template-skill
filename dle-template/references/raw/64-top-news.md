# Top News

*DLE documentation topic #64*

The output of this section is configured in the **topnews.tpl** file. This section configures the templates used to display the popular news block.

The following tags can be used:

`{title}` \- outputs the news title

`{title limit="x"}` \- Outputs the news title shortened to X characters.

`{link}` \- outputs the link to the news item

`{date}` \- Outputs the publication date; the date display format is configured in the system settings

`{date=date format} `\- Outputs the date in the format specified in the tag. This allows you to output not only the full date but also its individual parts. The date format is defined according to the format accepted in PHP. For example, the tag `{date=d}` outputs the day of the month of publication of the news item or comment, the tag `{date=F}` outputs the name of the month, and the tag `{date=d-m-Y H:i}` outputs the full date and time

`{image-x}` \- outputs the URL of images contained in the short news item, where x is the image number in the news item. For example, `{image-1}` will output the URL of the first image in the short news item

`[image-x]`text `[/image-x]` - outputs the text specified in the tags only if the image with number **X** is present in the news item

`{text}` \- outputs the full short news text

`{text limit="x"}` \- outputs only the text of the short news item without HTML formatting, while the publication text itself is trimmed to the specified **X** number of characters. The text is trimmed to the last complete logical word instead of being cut in the middle of a word. This makes it possible to create more advanced layouts for popular news publications on the website.

`{category}`\- outputs the category to which the article belongs

`{link-category}`\- outputs the link to all categories in which the news item is present

`[xfvalue_x]`\- outputs the value of the additional field "x", where "x" is the name of the additional field

`[xfgiven_x]` `[xfvalue_x] [/xfgiven_x]`\- Outputs the additional field "x" if the field is not empty; if the field has no value, the text is simply removed

`[xfnotgiven_X]`text `[/xfnotgiven_X]`\- Outputs the text specified in the tags if the additional field was not specified when publishing the news item, where "x" is the name of the additional field
