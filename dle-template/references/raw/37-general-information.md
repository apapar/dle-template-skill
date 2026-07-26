# General Information

*DLE documentation topic #37*

**DataLife Engine** allows the use of a template system for displaying news as well as various modules. We have tried to simplify the use of templates in the engine as much as possible, so to use them you do not need any knowledge of programming languages, only HTML markup. However, for more complete and easier use of templates, we recommend that you carefully read the guide on working with templates in order to find out which tags are used in templates and what they are intended for.

In DLE, a template is a folder located inside the `/templates/` folder. The files located in the template folder belong to one template.

With the help of a template, you can control the visual design of the DataLife Engine control panel; to do this, you need to place the `adminpanel.css` file in your template folder. It will be automatically included in the control panel after the main styles, and you can reassign any CSS styles of the control panel. In order to manage styles inside the iframe editor, you need to place the `editor.css` file in your template folder, which will be automatically included inside the iframe editor after the main styles, and you can modify the visual appearance of content inside the editor. For the preview when adding or editing publications to use your styles, you must place the `preview.css` file in the template folder. The files must be placed exactly in your template folder, and not in the main `/temlates/`.

You can also include one template file into another using the `{include file="my_block.tpl"}` tag. This tag includes the specified `my_block.tpl` file into the template. The tag is intended to simplify template structure when complex markup with many tags is used. This tag works in all .tpl template files. The included file must be located in your template folder or its subfolders. If you want to include a template file located in another template, you must use the full path from the root where the script is installed, for example, `{include file="/templates/mytemplate/my_block.tpl"}`. You can also use this tag to include CSS styles of your template `{include file="{THEME}/css/styles.css"}` or JS files.

The tags in the included template must be the same as those allowed in the template where the file is included. For example, if the file **my_block.tpl** is included in the **main.tpl** template, then only the tags allowed in **main.tpl** will work in that file as well.
