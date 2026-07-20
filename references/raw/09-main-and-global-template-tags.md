# Main and Global Template Tags

*DLE documentation topic #9*

The main layout of your page is located in the template file **main.tpl** This is the file that DataLife Engine uses as the main site layout, and all other engine components are connected to it. Let us review the main ones. `{AJAX}`, `{info}`, `{content}`, `{custom}` These tags are responsible for the correct display of publications.

Tag `{AJAX}` outputs the service JavaScript required for the normal operation of the engine in general and AJAX technology in particular. It is recommended to place it at the very beginning of the template after the <body> tag

Tag `{info}` outputs service information and errors about completed actions (for example, "Login failed, incorrect password" or "All fields must be filled in"). It is recommended to place it before the tag `{content}`

Tag `{content}`, is the main tag and is responsible for directly displaying publications and other built-in engine modules such as registration, static pages, and more

Tag `{tags}`, is responsible for outputting the tag cloud (special keywords assigned to the publication)

Tags `[sort] {sort} [/sort]`, are responsible for displaying the user selection of the news sorting order, if this is allowed in the script settings

**Global template tags that can be used in all templates:**

Tag `{custom ...}`, is responsible for outputting articles in a custom format and supports the following parameters:
`{custom name="X" id="1,2,5-8" category="2,3,5-8" author="x" days="x" template="custom" available="global" navigation="no" from="0" limit="10" fixed="yes" unique="yes" order="date" sort="desc" cache="yes"}`

Where the parameters are:

`name` is the block name, which can later be used to determine whether to show or hide any content outside this block depending on whether the block contains content or is empty. For example, writing `{custom name="block1" category="6"}` will display publications from category ID 6, and the block itself will receive the name **“block1”**. The following tags are used to work with this name: `[custom=X] Text [/custom]` where X is the block name. They display the text inside them if the block with this name contains information. You can also use the opposite tags `[not-custom=X] Text [/not-custom]` which display the text inside them if the block with this name contains no information and there are no publications. This allows you to add additional outer styling to blocks or, on the contrary, hide it depending on whether the block contains publications. For example:
`[custom=block1] Title {custom name="block1" category="6"} [/custom]`

The block itself may be located anywhere on the page and not necessarily inside these tags. This allows you to adapt and change other template styling based on these tags. You may also specify several blocks at once in the parameter and define the condition used to check their existence. You can check either that all listed blocks exist or that at least one of them exists. When blocks are listed with commas `[custom=block1,block2,block3] Text [/custom]` the presence of all three custom blocks will be checked, and the tag will display the text only if all three blocks exist. If blocks are listed using the character "**|** " `[custom=block1|block2|block3] Text [/custom]` for the text inside the tags to be displayed, it is enough for any one of the three listed blocks to exist.

`id` is the list of news IDs you want to display, separated by commas without spaces. You may also specify ranges of news IDs using a dash. For example, 1,4-8,11 will display the news item with ID 1, the news items with IDs from 4 to 8, and the news item with ID 11.

`idexclude` is completely opposite to the parameter `id="list of news ids"` and allows you to display news items that do not belong to the IDs specified in the parameter. For example, `{custom idexclude="5-10"}` will display all news items whose IDs do not belong to the range from five to ten.

`category` is the list of category IDs from which to select news items, separated by commas without spaces. You may also specify category ranges using a dash. For example, 1,4-8,11 will display news items from category 1, from categories with IDs from 4 to 8, and from category 11.

`categoryexclude` is completely opposite to the parameter `category="list of categories"` and allows you to display news items that do not belong to the categories specified in the parameter. For example, `{custom categoryexclude="2,7"}` will display all news items that do not belong to categories with IDs 2 and 7.

`subcat` specifies whether publications located in subcategories should also be included in the selection. This parameter may have the following values: `subcat="yes"` which indicates that all publications located in subcategories of the specified category must also be selected, as well as the value `subcat="only"` which indicates that only publications from subcategories must be selected, without taking the specified category into account. For example, suppose your site has categories with IDs 1, 2, and 3. Categories 2 and 3 are subcategories of the first one. When using the tag `{custom category="1" subcat="yes"}` all news items from categories 1, 2, and 3 will be selected. When using the tag `{custom category="1" subcat="only"}` only publications from categories 2 and 3 will be selected.

`tags ` is the list of keywords from the tag cloud assigned to news items. For example, the tag `{custom tags="news,templates"}` will display all news items that contain the tag cloud keywords "news" and "templates".

`template` is the template file that will be used to display news items. In this case it is custom.tpl. If you use several templates on the site, this file must be present in each template. This template uses tags similar to those used for the short story.

`available` defines the site section where the requested news items will be displayed and can accept the following values:

**main** \- on the main page
**date** \- when viewing news for specific dates
**cat** \- when viewing a category
**showfull** \- when viewing the full story
**search** \- when viewing search results
**xfsearch** \- when viewing news containing a specific extra field
**userinfo** \- when viewing a user profile
**register** \- during registration
**stats** \- when viewing statistics
**pm** \- when viewing personal messages
**feedback** \- when viewing feedback
**favorites** \- when viewing bookmarks
**newposts** \- when viewing new posts
**addnews** \- when adding news
**lastnews** \- when viewing the latest news on the site
**lastcomments** \- when viewing the latest comments
**lostpassword** \- when restoring the site account password
**static** \- when viewing static pages
**catalog** \- when viewing the page catalog
**alltags** \- when viewing the tag cloud
**tags** \- when viewing news from the tag cloud
**allnews** \- when viewing all news on the site or all news of a specific user
