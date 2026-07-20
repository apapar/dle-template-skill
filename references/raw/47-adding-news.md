# Adding News

*DLE documentation topic #47*

The output of this form is configured in the **addnews.tpl** file. This section configures the templates used when adding news to the database from the website visitor side. Editing this section is not recommended without HTML knowledge because field names are used that are passed to the script through the form. In other words, you may edit the text as you wish, but do not change the field names, this is extremely important. The following tags can be used:

`{header-title}` |  Outputs the section title depending on whether a news item is being added or an existing one is being edited
---|---
`{category}` |  Outputs the field for selecting the category to which the publication will belong
`{xfields}` |  Outputs additional fields when adding news
`[xfinput_X]` |  Outputs your selected additional field in the add news form in the place you need, where **X** is the name of the news additional field
`{admintag}` |  Outputs additional options for the administrator
`[urltag]`
text
`[/urltag]` |  Outputs the code enclosed in the tags for changing the article SEF URL (available to the administrator)
`{shortarea}` |  Outputs the WYSIWYG editor for adding the short news text
`{title}` |  Outputs the title when editing the news item
`{alt-name}` |  SEF URL value when editing the news item
`{short-story}` |  Short news text when editing the news item
`{full-story}` |  Full news text when editing the news item
`[sec_code]`
text
`[/sec_code]` |  Outputs the text if the use of CAPTCHA when adding news has been enabled in the script settings
`{sec_code}` |  CAPTCHA display code
`{fullarea}` |  Outputs the WYSIWYG editor for adding the full news text
`[recaptcha]`
text
`[/recaptcha]` |  Output the information enclosed in the tags if the reCAPTCHA type is enabled in the script settings
`{recaptcha}` |  Outputs the reCAPTCHA widget if this CAPTCHA output type is enabled in the script settings.
`[question]`
text
`[/question]` |  Output the text enclosed in these tags if the question-and-answer system is enabled
`{question}` |  Outputs the question for the visitor from the previously defined list of questions and answers
`{votetitle}` |  Outputs the poll title when editing the news item
`{frage}` |  Outputs the question from the poll when editing the news item
`{votebody}` |  Outputs the list of answer options from the poll when editing the news item
`[allow-shortstory]`
text
`[/allow-shortstory]` |  Output the enclosed text if support for the short description field is enabled in the script settings, and hide the text if this field is disabled.
`[allow-fullstory]`
text
`[/allow-fullstory]` |  Output the enclosed text if support for the full description field is enabled in the script settings, and hide the text if this field is disabled
