# Category Menu

*DLE documentation topic #43*

The output of this section is configured in the **categorymenu.tpl file. This section configures the output of the publication category menu.

`[root]`
text
`[/root]` |  Output the text enclosed in them during the initial generation of the menu template. These tags can be used to create the outer design of the menu. For example, to add outer HTML elements or menu elements that are not part of the category list.
---|---
`[item]`
text
`[/item]` |  Output each category element when building the category menu list. The text enclosed in this tag contains the HTML markup for each menu item.
`[sub-prefix]`
text
`[/sub-prefix]` |  Output the enclosed text as a prefix for subcategories if the category is a parent category and has subcategories.
`[sub-suffix]`
text
`[/sub-suffix]` |  Output the enclosed text as a suffix for subcategories if the category is a parent category and has subcategories.
`{sub-item}` |  Specifies the location for outputting subcategories inside a parent category if it has subcategories. This tag can be used only inside the `[item] [/item]` tags.
`{id}` |  Outputs the category ID.
`{name}` |  Outputs the category name. This tag can be used only inside the `[item] [/item]` tags.
`{url}` |  Outputs the category URL. This tag can be used only inside the `[item] [/item]` tags.
`{icon}` |  Outputs the category icon. This tag can be used only inside the `[item] [/item]` tags.
`[cat-icon]`
text
`[/cat-icon]` |  Output the enclosed text if an icon has been specified in the category settings for the category in which the publication is located
`[not-cat-icon]`
text
`[/not-cat-icon]` |  Output the text if no icon has been specified for the category in which the publication is located
`{news-count}` |  Outputs the number of publications in the category. This tag can be used only inside the `[item] [/item]` tags.
`[active]`
text
`[/active]` |  Output the enclosed text if the category or news item currently viewed on the website belongs to the category from the menu. This tag can be used only inside the `[item] [/item]` tags and is used, for example, to highlight active categories in the menu.
`[not-active]`
text
`[/not-active]` |  Output the enclosed text if the category or news item currently viewed on the website does not belong to the category from the menu.
`[isparent]`
text
`[/isparent]` |  Output the enclosed text if the category is a parent category and contains subcategories. This tag can be used only inside the `[item] [/item]` tags.
`{description}` |  Outputs the category description
`[description]`
text
`[/description]` |  Output the text enclosed in them if the category description is specified
`[not-description]`
text
`[/not-description]` |  Output the text enclosed in them if the category description has not been specified
`[not-parent]`
text
`[/not-parent]` |  Output the enclosed text if the category is not a parent category and does not contain subcategories
`[is-children]`
text
`[/is-children]` |  Output the enclosed text if the category is a subcategory of another category
`[not-children]`
text
`[/not-children]` |  Output the enclosed text if the category is not a subcategory of another category
