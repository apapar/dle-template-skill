# Registration on the Website

*DLE documentation topic #50*

The output of this section is configured in the **registration.tpl** file. This section configures the templates used when visitors register on the website. Editing this section is not recommended without HTML knowledge because field names are used that are passed to the script through the form. In other words, you may edit the text as you wish, but do not change the field names, this is extremely important. The following tags can be used:

`[registration]
`text
`[/registration]` |  Outputs the text enclosed in the tags during registration
---|---
`[validation]`
text
`[/validation]` |  Outputs the text enclosed in the tags during activation
`[sec_code]`
text
`[/sec_code]` |  Outputs the text enclosed in the tags if showing the security code is allowed
`{reg_code}` |  Outputs the security code for the visitor
`{xfields}` |  Outputs fields for entering profile additional fields
`[xfinput_X]` |  Outputs your selected additional field as a form field in the required place, where **X** is the name of the additional field
`[recaptcha]`
text
`[/recaptcha]` |  Output the information enclosed in the tags if the reCAPTCHA type is enabled in the script settings
`{recaptcha}` |  Outputs the reCAPTCHA widget if this CAPTCHA output type is enabled in the script settings.
`[question]`
text
`[/question]` |  Output the text enclosed in these tags if the question-and-answer system is enabled
`{question}` |  Outputs the question for the visitor from the previously defined list of questions and answers
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
