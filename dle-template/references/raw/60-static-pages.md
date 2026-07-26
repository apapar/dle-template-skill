# Static Pages

*DLE documentation topic #60*

The output of static pages is configured in the **static.tpl** file or in the file you assign when creating a static page in the script admin panel. In this template, you can use the following tags:

`{description}` outputs the description of the static page

`{static}` outputs the text of the static page

`{pages}`Outputs navigation between multiple pages of one static page.

`{views}` Outputs the number of views of the static page.

`{custom}` See the section "[Displaying news on pages](<indexd0d3.html?topic=9>)"

`{text limit="x"} `outputs only the text added for the static page without HTML formatting, while the publication text itself is shortened to the specified X number of characters. The text is trimmed to the last complete logical word.

`{image-x}`outputs the URL of an image contained in the text of the static page, where "x" is the image number in the page text; for example, `{image-1}` will output the URL of the first image in the page text.

`[image-x]` text `[/image-x]`output the specified text only if the image with number "x" is present in the page text.

`[print-link]` text `[/print-link]`outputs a link to the print version

`{date}` outputs the page creation date in the format configured in the script settings

`{date=date format}` outputs the date in the format specified in the tag. This allows you to output not only the full date but also its individual parts. The date format is defined according to the format accepted in PHP. For example, the tag `{date=d}` outputs the day of the month of publication of the news item or comment, the tag `{date=F}` outputs the name of the month, and the tag `{date=d-m-Y, H:i}` outputs the full date and time. In addition, both in the text of static pages and in their templates you can use tags from the advertising management module and informer tags.

`[edit]` text `[/edit]` outputs the text enclosed in the tags as a link to edit the static page for user groups that are allowed to edit static pages.

`[static=page name]` text `[/static]` outputs the text enclosed in the tags if the visitor is viewing the static page with the specified name.

`[not-static=page name]` text `[/not-static]` outputs the text enclosed in the tags if the visitor is not viewing the static page with the specified name.

`{full-link}` outputs the URL for this static page,

`{print-link}` outputs the URL of the print version for this page.

The template also supports advertising tags and RSS informer tags
