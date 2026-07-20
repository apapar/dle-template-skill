# Comment Submission Form

*DLE documentation topic #45*

The output of this section is configured in the **addcomments.tpl** file. This section configures the templates used when adding comments to the database from the website visitor side. Editing this section is not recommended without HTML knowledge because field names are used that are passed to the script through the form. In other words, you may edit the text as you wish, but do not change the field names, this is extremely important. The following tags can be used:

`{title}` |  Outputs the title that explains whether this form is for adding or editing comments
---|---
`[not-logged]`
text
`[/not-logged]` |  Outputs the code enclosed in the tags if the user is not registered. For example, you can place the name and email input fields inside these tags. If they are not filled in and the user is authorized on the website, these values will be taken automatically from the user's profile.
`{editor}` |  Outputs either the BBCODE or WYSIWYG editor for adding a comment, depending on the settings
`{image-upload}` |  Outputs a special field where the user can drag images for upload or select them from the computer.
`[sec_code]`
text
`[/sec_code]` |  Outputs the text if CAPTCHA usage for adding comments has been enabled in the settings
`{sec_code}` |  Outputs the CAPTCHA display code
`[recaptcha]`
text
`[/recaptcha]` |  Output the information enclosed in the tags if the reCAPTCHA type is enabled in the script settings
`{recaptcha}` |  Outputs the reCAPTCHA widget if this CAPTCHA output type is enabled in the script settings.
`[question]`
text
`[/question]` |  Output the text enclosed in these tags if the question-and-answer system is enabled
`{question}` |  Outputs the question for the visitor from the previously specified list of questions and answers
`[vk]`
text
`[/vk]` |  Output the enclosed text if authorization through the VK social network is enabled
`{vk_url}` |  Outputs the URL link for authorization through the VK social network
`[odnoklassniki]`
text
`[/odnoklassniki]` |  Output the enclosed text if authorization through the Odnoklassniki social network is enabled
`{odnoklassniki_url}` |  Outputs the URL link for authorization through the Odnoklassniki social network
`[facebook]`
text
`[/facebook]` |  Output the enclosed text if authorization through the Facebook social network is enabled
`{facebook_url}` |  Outputs the URL link for authorization through the Facebook social network
`[google]`
text
`[/google]` |  Output the enclosed text if authorization through the Google social network is enabled
`{google_url}` |  Outputs the URL link for authorization through the Google social network
`[mailru]`
text
`[/mailru]` |  Output the enclosed text if authorization through the Mail.ru social network is enabled
`{mailru_url}` |  Outputs the URL link for authorization through the Mail.ru social network
`[yandex]`
text
`[/yandex]` |  Output the enclosed text if authorization through the Yandex social network is enabled
`{yandex_url}` |  Outputs the URL link for authorization through the Yandex social network
`[comments-subscribe]`
text
`[/comments-subscribe]` |  Output the enclosed text as a link for subscribing to notifications about new comments.
`[catlist=1,2....]`
text
`[/catlist]` |  Outputs the text inside the tag if the news item belongs to the specified categories
`[not-catlist=1,2....]`
text
`[/not-catlist]` |  Outputs the text inside the tag if the news item does not belong to the specified categories.
`[allow-comments-subscribe] `
text
`[/allow-comments-subscribe]` |  Output the enclosed text if the user is allowed to subscribe to comments. This makes it possible to place the design of the comment subscription link in any block you need and hide it if subscription is forbidden.
`[comments-unsubscribe]`
text
`[/comments-unsubscribe]` |  Output the enclosed text as a link for unsubscribing from comments on this publication. This allows users to unsubscribe only from one specific news item on the website; previously they had to unsubscribe from all publications for that.
`{comments-subscribe}` |  Outputs the checkbox for subscribing to comments in the comment submission form.
`{guest-name}` |  Outputs the login of an unregistered user that was entered during the previous comment submission.
`{guest-mail}` |  Outputs the E-Mail of the unregistered user that was entered during the previous comment submission.
