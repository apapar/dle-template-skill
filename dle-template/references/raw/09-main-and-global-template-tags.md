# Main and Global Template Tags

*DLE documentation topic #9*

The main layout of your page is located in the template file **main.tpl** This is the file that DataLife Engine uses as the main site layout, and all other engine components are connected to it. Let us review the main ones. `{AJAX}`, `{info}`, `{content}`, `{custom}` These tags are responsible for the correct display of publications.

Tag `{AJAX}` outputs the service JavaScript required for the normal operation of the engine in general and AJAX technology in particular. It is recommended to place it at the very beginning of the template after the <body> tag

Tag `{info}` outputs service information and errors about completed actions (for example, "Login failed, incorrect password" or "All fields must be filled in"). It is recommended to place it before the tag `{content}`

Tag `{content}`, is the main tag and is responsible for directly displaying publications and other built-in engine modules such as registration, static pages, and more

Tag `{tags}`,is responsible for outputting the tag cloud (special keywords assigned to the publication)

Tags `[sort] {sort} [/sort]`,are responsible for displaying the user selection of the news sorting order, if this is allowed in the script settings

**Global template tags that can be used in all templates:**

Tag `{custom ...}`, is responsible for outputting articles in a custom format and supports the following parameters:

```
{custom name="X" id="1,2,5-8" category="2,3,5-8" author="x" days="x" template="custom" available="global" navigation="no" from="0" limit="10" fixed="yes" unique="yes" order="date" sort="desc" cache="yes"}
```

Where the parameters are:

`name` is the block name, which can later be used to determine whether to show or hide any content outside this block depending on whether the block contains content or is empty. For example, writing `{custom name="block1" category="6"}` will display publications from category ID 6, and the block itself will receive the name **“block1”**. The following tags are used to work with this name: `[custom=X] Text [/custom]` where X is the block name. They display the text inside them if the block with this name contains information. You can also use the opposite tags `[not-custom=X] Text [/not-custom]` which display the text inside them if the block with this name contains no information and there are no publications. This allows you to add additional outer styling to blocks or, on the contrary, hide it depending on whether the block contains publications. For example:

```
[custom=block1] Title {custom name="block1" category="6"} [/custom]
```

The block itself may be located anywhere on the page and not necessarily inside these tags. This allows you to adapt and change other template styling based on these tags. You may also specify several blocks at once in the parameter and define the condition used to check their existence. You can check either that all listed blocks exist or that at least one of them exists. When blocks are listed with commas `[custom=block1,block2,block3] Text [/custom]` the presence of all three custom blocks will be checked, and the tag will display the text only if all three blocks exist. If blocks are listed using the character "**|**" `[custom=block1|block2|block3] Text [/custom]` for the text inside the tags to be displayed, it is enough for any one of the three listed blocks to exist.

`id` is the list of news IDs you want to display, separated by commas without spaces. You may also specify ranges of news IDs using a dash. For example, 1,4-8,11 will display the news item with ID 1, the news items with IDs from 4 to 8, and the news item with ID 11.

`idexclude` is completely opposite to the parameter `id="list of news ids"` and allows you to display news items that do not belong to the IDs specified in the parameter. For example, `{custom idexclude="5-10"}` will display all news items whose IDs do not belong to the range from five to ten.

`category` is the list of category IDs from which to select news items, separated by commas without spaces. You may also specify category ranges using a dash. For example, 1,4-8,11 will display news items from category 1, from categories with IDs from 4 to 8, and from category 11.

`categoryexclude` is completely opposite to the parameter `category="list of categories"` and allows you to display news items that do not belong to the categories specified in the parameter. For example, `{custom categoryexclude="2,7"}` will display all news items that do not belong to categories with IDs 2 and 7.

`subcat`specifies whether publications located in subcategories should also be included in the selection. This parameter may have the following values: `subcat="yes"` which indicates that all publications located in subcategories of the specified category must also be selected, as well as the value `subcat="only"` which indicates that only publications from subcategories must be selected, without taking the specified category into account. For example, suppose your site has categories with IDs 1, 2, and 3. Categories 2 and 3 are subcategories of the first one. When using the tag `{custom category="1" subcat="yes"}` all news items from categories 1, 2, and 3 will be selected. When using the tag `{custom category="1" subcat="only"}` only publications from categories 2 and 3 will be selected.

`tags` is the list ofkeywords from the tag cloud assigned to news items. For example, the tag `{custom tags="news,templates"}` will display all news items that contain the tag cloud keywords "news" and "templates".

`template`is the template file that will be used to display news items. In this case it is custom.tpl. If you use several templates on the site, this file must be present in each template. This template uses tags similar to those used for the short story.

`available` defines the site section where the requested news items will be displayed and can accept the following values:

**main** - on the main page   
**date** - when viewing news for specific dates   
**cat** - when viewing a category   
**showfull** - when viewing the full story   
**search** - when viewing search results  
**xfsearch** - when viewing news containing a specific extra field  
**userinfo** - when viewing a user profile   
**register** - during registration   
**stats** - when viewing statistics   
**pm** - when viewing personal messages   
**feedback** - when viewing feedback   
**favorites** - when viewing bookmarks   
**newposts** - when viewing new posts   
**addnews** - when adding news   
**lastnews** - when viewing the latest news on the site   
**lastcomments** - when viewing the latest comments   
**lostpassword** - when restoring the site account password   
**static** - when viewing static pages   
**catalog** - when viewing the page catalog   
**alltags** - when viewing the tag cloud   
**tags** - when viewing news from the tag cloud   
**allnews** - when viewing all news on the site or all news of a specific user

You can combine sections using the **|** character. For example, `available="userinfo|register|main"` will display your news on the main page, during registration, and when viewing the user profile. If output is required in all sections of the site, this parameter is omitted.

`from`the news item number from which output begins

`limit`how many news items will be displayed

`order` the news sorting criterion, which may have the following values:

**date** - sort news by publication date   
**editdate** - sort news by edit date   
**rating** - sort news by rating   
**reads** - sort news by number of views   
**comments** - sort news by number of comments   
**title** - sort news by title   
**rand** - sort news in random order   
**id\_as\_list** - sorts publications in the same order as they are specified in the publication ID list. For example, the tag `{custom id="3,4,1,2" order="id_as_list"}` will display first the news item with ID 3, then 4, then 1, then 2.   
**lastviewed** - output of the last publications viewed by the user

`sort`specifies the publication sort order. When using the value **desc** publications are sorted in descending order, and when using **asc** in ascending order.

`author`the news author username parameter. If this parameter is specified, only news items by the specified author will be displayed. Multiple authors may be listed separated by commas. For example, the tag `{custom author="admin" limit="5"}` will display 5 news items by the author with the username "admin".

`authorexclude`specifies author usernames that must be excluded from display. Author usernames may also be listed in this parameter separated by commas. For example, when using `{custom authorexclude="admin,test"}` news items from all authors will be displayed except authors with the usernames "admin" and "test".

`catalog` all publications containing the symbolic code specified in the parameter are displayed. Symbolic codes may also be listed in the parameter separated by commas. For example, when using `{custom catalog="a,b"}` news items that contain the symbolic codes "a" or "b" will be displayed.

`catalogexclude`all publications that do not contain the symbolic code specified in the parameter are displayed. Symbolic codes may also be listed in the parameter separated by commas. For example, when using `{custom catalogexclude="a,b"}` news items that do not contain the symbolic codes "a" and "b" will be displayed.

`xfields`all publications containing the extra field value specified in the parameter are displayed. Values may also be listed in the parameter separated by commas. For example, when using `{custom xfields="value 1,value 2"}` news items that have extra fields containing "value 1" or "value 2" will be displayed.

`xfieldsexclude`all publications that do not contain the extra field value specified in the parameter are displayed. Values may also be listed in the parameter separated by commas. For example, when using `{custom xfieldsexclude="value 1,value 2"}` news items that do not have extra fields containing "value 1" and "value 2" will be displayed.

`days`specifies the time period; the value contains the number of days for which publications should be displayed. For example, the tag `{custom days="2" limit="5"}` will display 5 news items from the last 2 days.

`banners`accepts the values **yes** or **no.** This parameter enables or disables the output of advertising materials assigned to be displayed between publications. By default, if this parameter is missing in the tag, advertising materials between publications are disabled.

`futureannounce`accepts the values **yes** or **no.** This parameter works together with the days="X" parameter and indicates that publications must be taken from future dates. For example, the tag `{custom futureannounce="yes" days="1"}` means that publications whose date is scheduled for tomorrow, that is +1 day, must be displayed, and the tag `{custom futureannounce="yes" days="2"}` displays publications scheduled for tomorrow and the day after tomorrow, and so on. This parameter is useful for webmasters who want to display upcoming announcements on their site.

`cache` accepts the values **yes** or **no** - determines whether the output should be cached. Caching is recommended to reduce load. You may also specify the cache period in minutes, hours, or days. The following suffixes are used to specify cache time: **"m", "h", and "d".** For example, if you specify `{custom cache="30m" ….}` the block will be forcibly cached for 30 minutes; if you specify`{custom cache="2h" ….}`, the block will be cached for 2 hours; if you specify`{custom cache="1d" ….}` the block will be cached for one day.

`navigation` accepts the values **yes** or **no** - determines whether to use page navigation output. Navigation is displayed only for site pages that support navigation for the tag`{content}`, for example the main page or category pages. If the page does not support navigation, for example when displaying a full story or a static page, navigation for this tag is also automatically disabled regardless of the specified value.

`fixed` accepts the values **yes,** **no, only, or without** - determines whether pinned news should be taken into account when displaying publications. If **yes,** is specified, pinned news will be displayed first; if **no,** is specified, pinned news will be displayed in the general news list without taking this parameter into account. If the value **only**is specified, only pinned news will be displayed. If the value **without** is specified, pinned news will not be displayed at all.

`sortbyuser="yes"`accepts only one value and enables the use of custom sorting `[sort]``{sort}``[/sort]` for this publication block.

`unique="yes"`accepts only one value and indicates that publications in this block must not repeat if they have already been displayed on the site, that is, this block must output unique publications. This allows you to avoid repeating the same news items in custom output blocks if they match the same output criteria. For example, the two tags `{custom category="1" unique="yes" limit="1"}` and `{custom category="1" unique="yes" limit="1"}` will display different publications despite identical parameters: the first tag will display the first news item from the category, while the second will display the second item, skipping the first. Also, if a publication was displayed in the block `{content}` it will also not be displayed when this option is present in the {custom ....} tag.

`favorites="yes"`accepts only one value and will display the publications that are in the visitor bookmarks. For example, the tag `{custom favorites="yes" order="id_as_list"}` will display the publications from the user bookmarks in the same sorting order in which they were added to bookmarks.

Please note that all parameters of the tag `{custom ...}` are optional. You only need to specify at least any one parameter. All other parameters, if not specified, will be taken from the general script settings.

For example:

`{custom id="1,2" order="date"}` - will display news items with IDs 1 and 2 and sort them by date

`{custom category="2,7" from="5" cache="yes"}` - will display news items from categories 2 and 7; the number of news items will be taken from the script settings, and selection will begin after the 5th news item matching the condition

`{custom order="date" from="9" limit="5"}` - will display the last 5 news items starting from the 10th one

Remember that every use of this tag creates additional load on the database because it performs an extra query, so use it wisely if you need to conserve resources.

Global tag `[available=section] text [/available]`,displays the text inside the tags if the specified site section is being viewed:

The tag accepts all parameters similar to those specified for the `available` parameter of the `{custom}` tag. You can combine sections using the **|** character, for example `userinfo|register|main`.

For example:

```
[available=userinfo|register|main]
        A block that will be shown on the main page, during registration, and when viewing the user profile
[/available]
```

this tag will display the text inside the tags on the main page, during registration, and when viewing the user profile.

You can also use the tag `[not-available=userinfo|register|main]text [/not-available]` which is completely opposite to the tag `[available=...]` and displays the text everywhere except in the listed sections.

Tag `[category=X]text[/category]`,displays the text inside the tags if the specified category is being viewed:

The tag accepts as a parameter **ID** the category ID, and allows listing multiple categories separated by commas, as well as specifying a range using a hyphen:

```
[category=1,2,3,7-10]
     text
[/category]
```

will display the text inside the tags if the visitor is viewing categories whose IDs are 1, 2, or 3, as well as from 7 to 10.

You can also use the tag `[not-category=1,2,3,7-10] text [/not-category]`, which is completely opposite to the `[category=...]` tag and displays the text everywhere except in the listed categories.

Tag `[group=X] text [/group]`**,** displays the text inside the tags if the user belongs to the specified user group:

The tag accepts as a parameter **ID** the group ID, and allows listing several groups

```
[group=1,2,3]
    text
[/group]
```

display the text inside the tags if the visitor is an administrator, editor-in-chief, or journalist.

You can also use the tag `[not-group=1,2,3] text [/not-group]`, which is completely opposite to the `[group=...]` tag and displays the text for everyone except the listed groups.

`[country=X] text [/country]`

display the text inside them if the visitor is located in the specified X countries, where X is a list of ISO country codes. Countries can be listed separated by commas. For example, the tags `[country=RU, BY, KZ] text [/country]` will display the text if the visitor is from Russia, Belarus, or Kazakhstan.

`[not-country=X] text [/not-country]`

display the text inside them if the visitor is located outside the specified X countries, where X is a list of ISO country codes. For example, [not-country=RU, BY, KZ] text [/not-country] will display the text if the visitor is not from Russia, Belarus, or Kazakhstan, but from any other country.

`{country}`

will display the ISO code of the country where the site visitor is located. For example, it will output RU if the visitor is in Russia, or US if the visitor is in the United States.

`[page-count=1,2,3] text [/page-count]`

Will display the text inside them if the user is on a specific page number in news navigation, regardless of the site section, where 1,2,3 are navigation page numbers. This tag allows very flexible configuration of the output of specific information on a particular page and is useful for information blocks and advertising. You can use this tag together with other tags that define site sections and categories.

For example, a combination of tags:

```
[available=cat]
    [category=1]
        [page-count=1]
            text
        [/page-count]
    [/category]
[/available]
```

will display the text only if the user is viewing the first page of the category with ID 1 and is viewing the short stories specifically. When switching to another page in this category, this text will no longer be shown.

`[not-page-count=1,2,3] text [/not-page-count]`

Displays the text inside the tags on any page numbers except those specified in the tag.

`{banner_name}` This tag is intended to output advertising information on the site. The banner name itself is defined in a special module in the admin panel.

`[banner_name] text [/banner_name]`display the text inside them if the specified banner is displayed on the site page.

`{inform_name}` This tag is intended to output RSS informers and news from other sites. The name and all settings for this tag are configured in the script admin panel.

`[static=page_name] text [/static]`

will display the text inside the tags if the visitor is viewing the static page with the specified name. Listing pages in the tag separated by commas is also allowed. For example, `[static=test1,test2,test3]text [/static]` will display the text on the pages test1, test2, and test3

`[not-static=page_name] text [/not-static]`

will display the text inside the tags if the visitor is not viewing the static page with the specified name. Listing pages in the tag separated by commas is also allowed.

`[smartphone] text [/smartphone]`

will display the text inside the tags if the visitor is viewing your site from a mobile phone.

`[not-smartphone] text [/not-smartphone]`

will display the text inside the tags if the visitor is not viewing your site from a mobile phone.

`[tablet] text [/tablet]`

will display the text inside the tags if the visitor is viewing your site from a tablet.

`[not-tablet] text [/not-tablet]`

will display the text inside the tags if the visitor is not viewing your site from a tablet.

`[desktop] text [/desktop]`

will display the text inside the tags if the visitor is viewing your site from a desktop computer or laptop.

`[not-desktop] text [/not-desktop]`

will display the text inside the tags if the visitor is not viewing your site from a desktop computer or laptop.

`[ios] text [/ios]`

display the text inside them if the site visitor device uses the Apple iOS operating system

`[not-ios] text [/not-ios]`

display the text inside them if the site visitor device does not use the iOS operating system

`[android] text [/android]`

display the text inside them if the site visitor device uses the Google Android operating system

`[not-android] text [/not-android]`

display the text inside them if the site visitor device does not use the Android operating system

You may also include one template into another using the tag `{include file="my_block.tpl"}` this tag includes the specified my\_block.tpl file into the template. It is intended to simplify template structure if a complex layout with many tags is used.

```
{customcomments name="X" id="1,2,5-8" category="2,3,5-8" author="x" days="x" template="custom" available="global" from="0" limit="10" order="date" sort="desc" cache="yes"}
```

Displays comments anywhere on the site in a custom format. This tag is an auxiliary additional comment output and may be used, for example, to display the latest comments in a block on the site main page.

This tag can accept the following parameters:

`name` - the block name, which can later be used to determine whether to show or hide any content outside this block depending on whether the block contains content or is empty. For example, writing `{customcomments name="block1" category="6"}` will display comments from category ID 6, and the block itself will receive the name "**block1"**. The following tags are used to work with this name: `[customcomments=X] Text [/customcomments]` where X is the block name. They display the text inside them if the block with this name contains information. Opposite tags are also available `[not-customcomments=X] Text [/not-customcomments]` which display the text inside them if the block with this name contains no information and there are no comments. This allows you to add additional outer styling to blocks or hide it depending on whether the block contains publications or not. For example, `[customcomments=block1] Title {customcomments name="block1" category="6"} [/customcomments]`. The block itself may be located anywhere on the page and not necessarily inside these tags. This allows you to adapt and change other template styling based on these tags. You may also specify several blocks at once in the parameter and define the condition used to check their existence. You can check either that all listed blocks exist or that at least one of them exists. When blocks are listed with commas `[customcomments=block1,block2,block3] Text [/customcomments]` the presence of all three custom blocks will be checked, and the tag will display the text only if all three blocks exist. When blocks are listed using the | symbol `[customcomments=block1|block2|block3] Text [/customcomments]` for the text inside the tags to be displayed, it is enough for any one of the three listed blocks to exist.

`id` - the list of comment IDs you want to display, separated by commas without spaces. You may also specify ranges of comment IDs using a dash. For example, 1,4-8,11 will display the comment with ID 1, comments with IDs from 4 to 8, and the comment with ID 11.

`newsid` - the list of news IDs from which you want to display comments, separated by commas without spaces. You may also specify ranges of news IDs using a dash. For example, 1,4-8,11 will display comments from publications with ID 1, with IDs from 4 to 8, and with ID 11.

`newsidexclude` - the list of news IDs from which you do not want to display comments, separated by commas without spaces. You may also specify ranges of news IDs using a dash. For example, 1,4-8,11 will display comments from all publications except ID 1, IDs from 4 to 8, and ID 11.

`category` - the list of news category IDs from which to select comments, separated by commas without spaces. You may also specify category ranges using a dash. For example, 1,4-8,11 will display comments from category 1, categories with IDs from 4 to 8, and category 11.

`categoryexclude` - is completely opposite to the category="list of categories" parameter and allows you to display comments whose news items do not belong to the categories specified in the parameter. For example, {customcomments categoryexclude="2,7"} will display all comments on news items that do not belong to categories with IDs 2 and 7.

`author` - specifies the comment author username parameter. If this parameter is specified, only comments from the specified author will be displayed. Multiple authors may be listed separated by commas. For example, the tag {customcomments author="admin" limit="5"} will display 5 comments from the author with the username "admin".

`authorexclude` - specifies author usernames that must be excluded from output. Author usernames may also be listed in this parameter separated by commas. For example, when using {customcomments authorexclude="admin,test"} comments from all authors except authors with the usernames "admin" and "test" will be displayed.

`days` - specifies the time period, where x is the number of days for which comments should be displayed. For example, the tag {customcomments days="2" limit="5"} will display 5 comments from the last 2 days.

`template` - the template file used to display comments. In this case it is custom.tpl. If you use several templates on the site, this file must be present in each template. This template uses tags similar to those used in the comment output template (comments.tpl).

`available` is the section in which the requested comments will be displayed. It can accept all values listed for the same parameter of the `{custom ...}` tag. You can combine sections using the **|** character, for example `available="userinfo|register|main"`, which will display your news on the main page, during registration, and when viewing the user profile.

`from` - specifies the comment number from which output will begin. Comment numbering starts from zero. For example, if you want to skip the first comment that matches your conditions, you must specify from="1"

`limit` - specifies how many comments will be displayed.

`order` - specifies the comment sorting criterion and may accept the following values:

`date` - sort comments by date, for example, the tag `{customcomments order="date" limit="5"}` will display the five latest comments.

`rating` - sort comments by rating, for example, the tag `{customcomments order="rating" limit="5"}` will display the five highest-rated comments.

`rand` - sort comments in random order, for example, the tag `{customcomments order="rand" limit="5"}` will display five comments in random order.

`id_as_list` - sorts publications in the same order as they are specified in the publication ID list. For example, the tag `{custom id="3,4,1,2" order="id_as_list"}` will display first the news item with ID 3, then 4, then 1, then 2.

`sort` - specifies the comment sort order. When using the value **desc** publications are sorted in descending order, and when using **asc** in ascending order.

`cache` - accepts the values yes or no and specifies whether to cache the output. We recommend caching blocks of this output to reduce server load. You may specify the period in minutes, hours, or days. The suffixes "m", "h", and "d" are used to specify cache time. For example, if you specify `{customcomments cache="30m" ….}` the comment block will be forcibly cached for 30 minutes; if you specify `{customcomments cache="2h" ….}`, the comment block will be cached for 2 hours; if you specify `{customcomments cache="1d" ….}` the comment block will be cached for one day.

All parameters of this tag are optional. It is enough to specify any single parameter. You may also combine different parameters of this tag as you wish.

`{* Commented code *}`

This tag is intended for commenting code. Everything enclosed between "{\*" and "\*}" will be removed from the template and will not be present in the site output. These tags are useful for template developers when debugging functionality and temporarily commenting out certain parts. This tag is global and can be used in all templates.

`{lang text="LANG_PARAMETER"}`

This tag is intended to output information from the language file website.tpl that is currently in use, where **LANG\_PARAMETER** is the parameter value that must be displayed. For example, the tag **{lang text="attach\_images"}** will display the label "**Attach Images"** from the language pack when Russian is used, and if English is used then **“Attach Images”**

The tag used to output the category menu is `{catmenu}`. You can use this tag in any template file; it is global. In turn, this tag uses and includes the template file **categorymenu.tpl**.

```
{catmenu id="1,2,3-5" idexclude="1,2,3-5" subcat="yes" template="custom" cache="yes"}
```

Displays the category menu in a custom format, where:

`id="1,2,3-5"` - the list of category IDs that must be displayed in the menu. You may list several categories separated by commas or specify an ID range using a dash.

`idexclude="1,2,3-5"` - the list of category IDs that must not be included in the category list. All categories except the specified ones will be displayed. You may list several categories separated by commas or specify an ID range using a dash.

`subcat="yes"` - this parameter accepts the values "yes", "no", or "only" and is used together with the id parameter of this tag. It specifies whether subcategories of the listed categories must be included automatically. For example, if there is a category with ID 1 and it has subcategories with IDs 2 and 3, then using the tag {catmenu id="1" subcat="yes"} will display category 1 and its subcategories 2 and 3, while using the tag {catmenu id="1" subcat="no"} will display only category ID 1. The value "only" means that only subcategories of the specified category should be displayed. For example, when using the tag `{catmenu id="1" subcat="only"}` only subcategories belonging to category ID "1" will be displayed. Also, for example, using the simple construction `[available=cat] {catmenu id="{category-id}" subcat="only"} [/available]` you can automatically output the list of subcategories for the category currently viewed on the site.

`template="custom"` - specifies the template name that will be used to generate the menu instead of the standard categorymenu.tpl

`cache="yes"` - this parameter accepts the values "yes" or "no" and specifies whether this block should be cached. When caching is enabled, the ability to control highlighting of the active viewed category through the tags `[active] text [/active]` in the template.

`{catnewscount id="X"}`

Outputs the number of publications for the specified category, where X is the ID of the category you need. This tag is useful for displaying the number of publications in menus that have already been created manually in site templates.

`{category-id}`

Displays the ID of the category currently viewed by the site visitor. This tag is useful when building site menus and when you need to quickly reassign CSS classes or template file names while styling publication output templates.

`{category-title}`

Displays the name of the category currently viewed by the site visitor. This tag is useful when you need to output the viewed category name separately.

`{category-description}`

Displays the assigned category description when the user is viewing this category. Output is also available when displaying full publications

`[category-description] text [/category-description]`

Display the text inside them if the currently viewed category has a category description assigned

`[not-category-description] text [/not-category-description]`

Display the text inside them if the category has no description.

`{category-icon}`

Displays the icon of the category currently viewed by the user, or the news item category if the full story is being viewed

`{category-url}`

Displays the URL of the viewed category

`{page-title}`

Displays the page title specified in the "Titles, descriptions, meta tags" section

`{page-description}`

Displays the page description specified in the "Titles, descriptions, meta tags" section

`{page-count}`

Displays the page number the user is currently on

`[script] code [/script]` global tags that allow you to place executable JavaScript code. This code will be placed directly inside the executable block of other DataLife Engine JS scripts and will run immediately after the other JS scripts used during inclusion are loaded. This allows you to organize all JS code in the template, standardize its execution order, and avoid conflicts in the future. Example usage:

```
[script]
$.get("{THEME}/images/sprite.svg", function(data) {
  var div = document.createElement("div");
  div.innerHTML = new XMLSerializer().serializeToString(data.documentElement);
  document.body.insertBefore(div, document.body.childNodes[0]);
});
[/script]
```

`{cache-id}`

Displays the current active cache ID

`[active-plugins=X] Text [/active-plugins]`

Displays the text inside it if the specified plugin is enabled and used on the site. X is the plugin ID or its name. For example, you may specify `[active-plugins=1] Text [/active-plugins]` or `[active-plugins=My Plugin] Text [/active-plugins]`, and if the plugin with ID 1 or the name "My Plugin" is enabled in the system, the text specified in the tag will be displayed. You may also list several parameters in the tag separated by commas, for example, `[active-plugins=1,2,5] Text [/active-plugins]`

`[not-active-plugins=X] Text [/not-active-plugins]`

Displays the text inside it if the specified plugin is disabled and not used on the site. X is the plugin ID or its name. For example, you may specify `[not-active-plugins=1] Text [/not-active-plugins]` or `[not-active-plugins=My Plugin] Text [/not-active-plugins]`, and if the plugin with ID 1 or the name "My Plugin" is disabled in the system and not used, the text specified in the tag will be displayed. You may also list several parameters in the tag separated by commas, for example, `[not-active-plugins=1,2,5] Text [/not-active-plugins]`.

**Output of user profile data in the main.tpl template:**

`{profile-link}` - Displays a link to the user profile

`{profile-login}` - Displays the user login

`{ip}` - Displays the user IP

`{foto}` - Displays a link to the user avatar

`{fullname}` - Displays the user full name

`[fullname] text [/fullname]` - Displays the text inside the tags if the full name is specified in the user profile

`{land}` - Displays the user country

`[land] text [/land]` - Displays the text inside the tags if the country is specified in the user profile

`{mail}` - Displays the user email address

`{group}` - Displays the user group

`{registration}` - Displays the user registration date

`{lastdate}` - Displays the user last visit date

`{group-icon}` - Displays the user group icon

`{time_limit}` - Displays the date until which the user remains in the group if the group is temporary

`[time_limit] text [/time_limit]` - Displays the text inside the tags if the user belongs to a temporary group

`{comm-num}` - Displays the number of user comments

`{comments}` - Displays the URL of the user comments link

`[comm-num] text [/comm-num]` - Displays the text inside the tags if the user has comments on the site

`[not-comm-num] text [/not-comm-num]` - Displays the text inside the tags if the user has no comments on the site

`{news}` - Displays the URL of the user news link

`{rss}` - Displays the URL of the user news RSS feed

`{news-num}` - Displays the number of user news items

`[news-num] text [/news-num]` - Displays the text inside the tags if the user has news items on the site

`[not-news-num] text [/not-news-num]` - Displays the text inside the tags if the user has no news items on the site

`{new-pm}` - Displays the number of unread personal messages of the user

`{all-pm}` - Displays the total number of user personal messages

`{favorite-count}` - Displays the total number of publications in the user bookmarks

`[profile_xfvalue_X]`- Displays the value of the extra field named "X" from the user profile

`[profile_xfgiven_X] text [/profile_xfgiven_X]` - Displays the text inside the tags if the extra field named "X" is specified in the user profile

`[profile_xfnotgiven_X] text [/profile_xfnotgiven_X]` - Displays the text inside the tags if the extra field named "X" is not specified in the user profile

`{admin-link}` - Displays a link to the admin panel if the user has access to it

`[admin-link] text [/admin-link]` - Displays the text inside the tags if the user has access to the admin panel
