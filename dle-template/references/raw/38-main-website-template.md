# Main Website Template

*DLE documentation topic #38*

This template file is the primary file that includes all other template files from every section. It is located in **main.tpl** This file configures your page templates and includes the other engine components. Editing this file is not recommended without HTML knowledge, because it uses field names passed to the script through forms. In other words, you may change the text as needed, but do not change the field names, this is critically important.

`{headers}` |  Outputs the generated meta tags for page encoding, title, keywords, and description. It also includes all required scripts. Place it in the template between the <head> tags. This tag is required in the template.
---|---
`{jsfiles}` |  Outputs the inclusion of all JS scripts used by DLE in the specified place in the template. With this tag, you can, for example, move all JS scripts to the very bottom of the page to speed up loading and rendering. This tag is optional, and if it is missing from the template, all scripts will be included as before via the `{headers}` tag. Please note that if you move script inclusion, the `{AJAX}` tag must also be placed below the `{jsfiles}` tag. You must also ensure that all third-party scripts in your template continue to work correctly if they use, for example, the jQuery library, so that they do not run before all scripts have been loaded. We strongly do not recommend that beginners use this tag; it is intended for experienced webmasters who have experience working with JS scripts.
`{THEME}` |  Path to the selected template
`{login}` |  Inserts the visitor login and registration panel
`{vote}` |  Inserts a site poll
`{changeskin}` |  Inserts the site skin switching form
`[changeskin]`
text
`[/changeskin]` |  Display the text inside them if users are allowed to change the site theme
`{calendar}` |  Inserts the calendar module
`{topnews}` |  Displays the top-rated articles added during the last month
`{archives}` |  Displays archives
`{info}` |  Displays engine service information when needed. This tag must be present in the template.
`{content}` |  Outputs the main site content itself: news, contact forms, registration, and so on, in other words the main column. This tag is almost always required in the template, except in very rare cases depending on the site requirements.
`{custom}` |  See the section "[Displaying News on Pages](<indexd0d3.html?topic=9>)"
`[available=section]`
text
`[/available]` |  See the section "[Displaying News on Pages](<indexd0d3.html?topic=9>)"
`{AJAX}` |  Includes all required scripts for DLE and AJAX. It is mandatory and should preferably be placed at the beginning of the page, immediately after the <body> tag. This tag is required in the template.
`[group=X]`
text
`[/group]` |  Displays text for a specific user group. X is a comma-separated list of user group IDs.
`[category=X]`
text
`[/category]` |  Used to display text if the user is in **X** category. Where **X** this is **ID** your category. Categories may be listed separated by commas
`{banner_name}` |  This tag is used to display advertising information on the site. The banner name itself is set in the dedicated module in the admin panel.
`{inform_name}` |  This tag is used to display RSS informers and news from other sites. The name and all settings for this tag are configured in the script admin panel.
`[not-category=X]`
text
`[/not-category]` |  Used to display text if the user is inezde, except kak in **X** category. Where **X** this is **ID** your category. Categories may be listed separated by commas
`[not-group=X]`
text
`[/not-group]` |  Displays text for any user group except the specified one. X is a comma-separated list of user group IDs for which the information must not be shown.
`[page-count=1,2,3]
`text
`[/page-count]` |  Displays the text inside them if the user is on a specific news navigation page number, regardless of the site section, where 1,2,3 are navigation page numbers.
`[not-page-count=1,2,3]`
text
`[/not-page-count]` |  Displays the text inside the tags on any page numbers except those specified in the tag.
`[news=1,2,3]`
text
`[/news]` |  Display the text inside them if the visitor is viewing the full story of the news items specified in the tag parameterwhere 1,2,3 are news IDs**.
`[not-news=1,2,3]`
text
`[/not-news]` |  Displays the text on any other pages except when viewing the news items specified in the tag.
`[tags=tag1,tag2,tag3]`
text
`[/tags]` |  Display the text inside them if the visitor is viewing pages with the listed tag cloud keywords, where tag1, tag2, tag3 are tag cloud keywords.
`[not-tags=tag1,tag2,tag3]`
text
`[/not-tags]` |  Displays the text on any other pages except those specified in the tag.
`[related-news]`
    `{related-news}`
`[/related-news]` |  Display a block of related news while viewing the full story.
`[vk]`
text
`[/vk]` |  Display the text inside them if authorization via VK social network is enabled
`{vk_url}` |  Displays the URL for VK social network authorization
`[odnoklassniki]`
text
`[/odnoklassniki]` |  Display the text inside them if authorization via Odnoklassniki social network is enabled
`{odnoklassniki_url}` |  Displays the URL for Odnoklassniki social network authorization
`[facebook]`
text
`[/facebook]` |  Display the text inside them if authorization via Facebook social network is enabled
`{facebook_url}` |  Displays the URL for Facebook social network authorization
`[google]`
text
`[/google]` |  Display the text inside them if authorization via Google social network is enabled
`{google_url}` |  Displays the URL for Google social network authorization
`[mailru]`
text
`[/mailru]` |  Display the text inside them if authorization via Mail.ru social network is enabled
`{mailru_url}` |  Displays the URL for Mail.ru social network authorization
`[yandex]`
text
`[/yandex]` |  Display the text inside them if authorization via Yandex is enabled
`{yandex_url}` |  Displays the URL for Yandex authorization
`{catmenu}` |  Displays a menu of site categories. The menu appearance is defined in the template **categorymenu.tpl**
`{catnewscount id="X"}` |  Outputs the number of publications for the specified category, where X is the ID of the category you need.
`{category-id}` |  Displays the ID of the category currently viewed by the site visitor. This tag is useful when building site menus and when you need to quickly reassign CSS classes or template file names while styling publication output templates.
`{category-title}` |  Displays the name of the category currently viewed by the site visitor. This tag is useful when you need to output the viewed category name separately.
`{category-description}` |  Displays the assigned category description when the user is viewing this category. Output is also available when displaying full publications.
`{page-title}` |  Displays the page title specified in the "Titles, descriptions, meta tags" section
`[category-icon]`
text
`[/category-icon]` |  Display the text inside them if an icon is set for the currently viewed category. These tags also work when viewing the full story and take the publication category into account.
`[not-category-icon]`
text
`[/not-category-icon]` |  Display the text inside them if the currently viewed category has no category icon assigned, or if the viewed page is not a category
`{category-icon}` |  Displays the category icon URL.
`{page-description}` |  Displays the page description specified in the "Titles, descriptions, meta tags" section
`[page-title]`
text
`[/page-title]` |  Displays the text enclosed in these tags if a title has been specified for the viewed page in the "Titles, descriptions, meta tags" module.
`[not-page-title]`
text
`[/not-page-title]` |  Displays the text enclosed in these tags if no title has been specified for the viewed page.
`[page-description]`
text
`[/page-description]` |  Displays the text enclosed in these tags if a description has been specified for the viewed page in the "Titles, descriptions, meta tags" module.
`[not-page-description]`
text
`[/not-page-description]` |  Displays the text enclosed in these tags if no description has been specified for the viewed page.
`[navigation]`
text
`[/navigation]` |  Displays the text enclosed in these tags if news navigation is available.
`[not-navigation]`
text
`[/not-navigation]` |  Displays the text enclosed in these tags if navigation is absent.
`{navigation}` |  Displays the page navigation block
`{cloudstag}` |  Displays a tag cloud keyword when viewing a site section that shows publications for a specific tag cloud keyword
`[xfvalue_x]` |  Value of the extra field "x", where "x" is the extra field name
`[xfvalue_X limit="X2"]` |  Displays only the extra field text without HTML formatting, while truncating the text to the specified X2 number of characters. The text is truncated to the last logical word. For example `[xfvalue_test limit="50"]` will display only the first 50 characters of the extra field value named test
`[xfgiven_x]`
    `[xfvalue_x]
[/xfgiven_x]` |  Displays the extra field "x" if the field is not empty. Available only when viewing the full story.
`[xfnotgiven_X]`
text
`[/xfnotgiven_X]` |  Display the text inside them if the extra field was not set when publishing the news item, where "x" is the extra field name. Available only when viewing the full story.
`[ifxfvalue tagname="tagvalue"]`
Text
`[/ifxfvalue]` |  Display the text inside them if the extra field value matches the specified value. Where **tagname** this is the extra field name, and **tagvalue** this is its value. Values **tagvalue** can be listed separated by commas. Available only when viewing the full story.
`[ifxfvalue tagname!="tagvalue"]`
Text
`[/ifxfvalue]` |  Display the text inside them if the field value does not match the specified value. Where **tagname** this is the extra field name, and **tagvalue** this is its value. Values **tagvalue** can be listed separated by commas. Available only when viewing the full story.
`[xfvalue_thumb_url_X]` |  This tag can be used only if the extra field has the "Image" type. The tag outputs only the URL of the thumbnail of the uploaded image, where "x" is the name of the extra field. Available only when viewing the full story.
`[xfvalue_image_url_X]` |  This tag can be used only if the extra field has the "Image" type. The tag outputs only the URL of the full-size uploaded image, where "x" is the name of the extra field. Available only when viewing the full story.
`[xfvalue_image_description_X]` |  This tag can be used only if the extra field has the "Image" type. The tag outputs only the description of the uploaded image, where "x" is the name of the extra field. Available only when viewing the full story.
`[xfvalue_X image="Nr"]` |  Displays images uploaded to an extra field of the "Gallery" type individually. "X" is the name of the extra field, and "Nr" is the number of the image in the gallery. For example, when using `[xfvalue_test image="2"]`, image number two uploaded to the extra field named "test" will be displayed. Available only when viewing the full story.
`[xfvalue_X image-url="Nr"]` |  Displays the URLs of full-size images uploaded to an extra field of the "Gallery" type individually. "X" is the name of the extra field, and "Nr" is the number of the image in the gallery. Available only when viewing the full story.
`[xfvalue_X image-thumb-url="Nr"]` |  Displays the URLs of thumbnails uploaded to an extra field of the "Gallery" type individually. "X" is the name of the extra field, and "Nr" is the number of the image in the gallery. Available only when viewing the full story.
`[xfvalue_X image-description="Nr"]` |  Displays the descriptions of images uploaded to an extra field of the "Gallery" type individually. "X" is the name of the extra field, and "Nr" is the number of the image in the gallery. Available only when viewing the full story.
`[xfgiven_X image="NR"]`
text
`[/xfgiven_X image="NR"]` |  Display the text inside them if an image with the specified number exists and is uploaded in the extra field, where X is the extra field name and NR is the image number. Available only when viewing the full story.
`[xfnotgiven_X image="NR"]`
Text
`[/xfnotgiven_X image="NR"]` |  Display the text inside them if an image with the specified number is missing in the extra field, where X is the extra field name and NR is the image number. Available only when viewing the full story.
`[xfvalue_X video="Nr"]` |  Displays videos uploaded to an extra field of the "Video playlist" type individually by selected number. "X" is the name of the extra field, and "Nr" is the number of the video in the playlist. Available only when viewing the full story.
`[xfvalue_X video-url="Nr"]` |  Displays the URLs of uploaded items from an extra field of the "Video playlist" type individually. "X" is the name of the extra field, and "Nr" is the number of the video in the playlist. Available only when viewing the full story.
`[xfvalue_X video-description="Nr"]` |  Displays video descriptions from the "Video playlist" type extra field individually. Where "X" is the extra field name and "Nr" is the video number in the playlist
`[xfgiven_X video="Nr"]`
Text
`[/xfgiven_X video="Nr"]` |  Display the text inside them if a video with the specified number exists and is uploaded in the extra field, where X is the extra field name and Nr is the video number. Available only when viewing the full story.
`[xfnotgiven_X video="Nr"]`
Text
`[/xfnotgiven_X video="Nr"]` |  Display the text inside them if a video with the specified number is missing in the extra field, where X is the extra field name and NR is the video number. Available only when viewing the full story.
`[xfvalue_X audio="Nr"]` |  Displays items uploaded to an extra field of the "Audio playlist" type individually. "X" is the name of the extra field, and "Nr" is the number of the audio file in the playlist. Available only when viewing the full story.
`[xfvalue_X audio-url="Nr"]` |  Displays the URLs of uploaded items from an extra field of the "Audio playlist" type individually. "X" is the name of the extra field, and "Nr" is the number of the audio file in the playlist. Available only when viewing the full story.
`[xfvalue_X audio-description="Nr"]` |  Displays the descriptions of audio files uploaded to an extra field of the "Audio playlist" type individually. "X" is the name of the extra field, and "Nr" is the number of the audio file in the playlist. Available only when viewing the full story.
`[xfgiven_X audio="Nr"]`
text
`[/xfgiven_X audio="Nr"]` |  Displays the text enclosed in these tags if audio with the specified number exists and is uploaded to the extra field, where X is the name of the extra field and Nr is the number of the audio file. Available only when viewing the full story.
`[xfnotgiven_X audio="Nr"]`
Text
`[/xfnotgiven_X audio="Nr"]` |  Displays the text enclosed in these tags if audio with the specified number is missing in the extra field, where X is the name of the extra field and Nr is the number of the audio file. Available only when viewing the full story.
