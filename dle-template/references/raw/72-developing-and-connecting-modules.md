# Developing and Connecting Modules

*DLE documentation topic #72*

DataLife Engine provides convenient mechanisms for connecting script modifications developed by you. These mechanisms make it possible to keep them working even after the script is updated to a new version, because they allow connection without editing script files. To connect modules you have developed, you need to add the following tag to any template you need:

`{include file="engine/modules/mymod.php"}`

Where `/engine/modules/` is the path to your module file, and `mymod.php` is the name of the included file. Standard DataLife Engine module files are located in this folder, and we recommend using this folder, although it is not a mandatory requirement and the file can be located in any other folder on the server. The only security limitation for such module inclusion is that the folder where the file is located must not have write permissions (CHMOD 777). We also recommend using relative paths when connecting modules; DataLife Engine automatically recognizes relative paths and connects your modules according to the script settings and the paths where the script is installed. This allows you to create universal installation instructions for your modifications.

You can also include PHP files of your module while passing different parameters to them, for example:

`{include file="engine/modules/mymod.php?param=value1&variable2=value2"}`

Thanks to this type of inclusion, you can make your modifications multifunctional so that they perform different roles and functions depending on how they are included. The passed variables will be available in your module as `$param` and `$variable2` respectively.

As parameters for included modules, you can use script template tags (except when using a tag in the main.tpl template and tags belonging to the main.tpl template). For example, by adding the construction `{include file="engine/modules/mymod.php?param={news-id}"}` to the full news template, you can pass the news ID as a parameter to your third-party module, and so on. **Attention, developers:** The parameters passed to the script are analogous to GET parameters in the browser URL, so when choosing which tags to pass, you must take GET string limitations into account. In other words, for example, you cannot pass the full news content as a parameter.

You can also use inclusion of your own modules to replace the main block where news and other primary information are displayed. To do this, you need to use this tag together with the `[available=section]text[/available]` and `[not-available=section]text[/not-available]` tags. See the tag descriptions in the documentation in the "Displaying news on pages" section. You can use the standard list of sections or create your own website section by passing it in the browser URL. Let us look at a simple example. You want to add your own section to the standard website sections and display information from your module there. Suppose you want to create an FAQ section. For this, add the following construction to the main.tpl template:
`[available=faq]
        {include file="engine/modules/mymod.php"}
    [/available]
    [not-available=faq]
        {content}
    [/not-available]`

After this inclusion, in addition to the operation of the standard website sections, when opening the address <http://site.ru/index.php?do=faq>, your new section from your module will be displayed instead of news.

For your modules to work and display information exactly in the place in the template where the above tag is inserted, only one important condition is required. Output of information must be performed only through the PHP **echo** function. Let us look at an example of the simplest module and information output. Create a file **mymod.php** with the following contents:
`<?php
        echo "Test module";
    ?>`

When this file is included in the template, the following text will appear in this place of the template: **Test module**

List of DLE variables and classes that you can use in your included module without additional declaration:

`$is_logged` \- contains information whether the visitor is an authorized user or a guest, and has the value true or false.

`$member_id `\- contains an array with information about the authorized user, including all profile information.

`$db` \- DLE class for working with the database.

`$tpl` \- DLE class for working with templates.

`$cat_info` \- array containing information about all categories on the website.

`$config` \- array containing information about all script settings.

`$user_group` \- array containing information about all user groups and their settings.

`$category_id` \- contains the ID of the category that the visitor is viewing.

`$_TIME` \- contains the current time in UNIX format with the offset configured in the script settings.

`$lang` \- array containing text from the language pack.

`$smartphone_detected` \- contains information whether the user is viewing the website from a smartphone or a regular browser, and has the value true or false.

`$dle_module` \- contains information about the website section the user is viewing, or the value of the **do** variable from the browser URL.

**Attention:** Your module must only read data from these variables. Changing variable values will cause failures in the standard script features and lead to incorrect operation.
