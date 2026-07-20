# Related News

*DLE documentation topic #65*

The output of this section is configured in the **relatednews.tpl** file. This section configures the templates used to display the list of related news items when viewing full news on the website.

The following tags can be used:

`{title}` \- outputs the news title

`{title limit="x"}` - outputs the news title shortened to the X number of characters specified in the tag. The title is shortened only to the end of a complete logical word and is not cut in the middle.

`{link}` \- outputs the link to the news item

`{date}` - Outputs the publication date; the date display format is configured in the system settings

`{date=date format}` \- Outputs the date in the format specified in the tag. This allows you to output not only the full date but also its individual parts. The date format is defined according to the format accepted in PHP. For example, the tag `{date=d}` outputs the day of the month of publication of the news item or comment, the tag `{date=F}` outputs the month name, and the tag `{date=d-m-Y H:i}` outputs the full date and time

`{image-x}` \- outputs the URL of images contained in the short news item, where x is the image number in the news item. For example, `{image-1}` will output the URL of the first image in the short news item

`[image-x]`text `[/image-x]` \- outputs the text specified in the tags only if the image with number **X** is present in the news item.

`{text}` \- outputs the full short news text

`{text limit="x"}` \- outputs only the text of the short news item without HTML formatting, while the publication text itself is trimmed to the specified **X** number of characters. The text is trimmed to the last complete logical word instead of being cut in the middle of a word. This makes it possible to create more advanced layouts for popular news publications on the website.

`{category}`\- outputs the category to which the article belongs

`{link-category}`\- outputs the link to all categories in which the news item is present

`[xfvalue_x]`\- outputs the value of the additional field "x", where "x" is the name of the additional field; all other tags used for displaying additional fields are also supported, which you can view in the description of the full news output template.
