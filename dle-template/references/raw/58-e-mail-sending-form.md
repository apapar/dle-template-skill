# E-Mail Sending Form

*DLE documentation topic #58*

The output of this section is configured in the **feedback.tpl** file. This section configures the templates used when displaying the form for sending E-Mail. Editing this section is not recommended without HTML knowledge because field names are used that are passed to the script through the form. In other words, you may edit the text as you wish, but do not change the field names, this is extremely important. The following tags can be used:

`{recipient}` \- Outputs the list of recipients

`[not-logged]`text `[/not-logged]` \- Outputs the text between the tags if the visitor is not registered

**`{code}` \- **Outputs the CAPTCHA display code

`[sec_code]` text `[/sec_code]`Outputs the text if the standard CAPTCHA is enabled in the script settings

`[recaptcha]` text `[/recaptcha]`Outputs the text if reCAPTCHA is enabled in the script settings

`{recaptcha}`Outputs the reCAPTCHA widget if this CAPTCHA output type is enabled in the script settings

`[attachments]` text `[/attachments]`Output the enclosed text if sending files in feedback is allowed for this user group.

You also have the ability to use additional fields in the website feedback section. To add an additional field to the feedback form, you only need to place the required field with a specific name in the form, after which it will be available for use in e-mail message templates. To add an additional field to the form, use an attribute with the name: name="xfield[X]", where X is the field name written in Latin letters. For example, if you want to place a phone number field in the feedback form, place the following field in the feedback.tpl template:
`<input placeholder="Your phone number" type="text" name="xfield[tel]">`

where tel is the unique name of the additional field, and in the e-mail message template in the admin panel you place the tag: {%tel%}, after which the phone number entered by the user will also be sent together with the message. Any number of additional fields may be used.

You can also attach files to e-mails in feedback. To do this, in the group settings you can specify for each user group whether they are allowed to attach files to e-mails. You can also specify how many files they may attach to an e-mail at most, their maximum total size, and which file extension types they are allowed to send.

To attach files directly in the form, you can use the following tag:
`<input name="attachments[]" type="file" multiple="">`

At the same time, the tag name and the number of tags can be any, the main thing is using **type="file"** in the attribute. DLE will calculate all files attached to the e-mail itself and check whether they comply with the group settings.

It is also possible to use several feedback forms on the website. For this, a specially formed URL in the browser is used. To send the standard feedback form, use the address `https://website.com/index.php?do=feedback`. To add another feedback form, you can use the address `https://website.com/index.php?do=feedback&template=X1&mailtemplate=X2`, where `X1` is the template name for the feedback form template, and `X2` is the name of the e-mail template that will be sent through this form. If template `X1` is specified, then the file `feedback_X1.tpl` must exist on the server in your template folder, and if template `X2` is specified, then the file `email_X2.tpl` must exist on the server in your template folder. For example, when using the URL `https://website.com/index.php?do=feedback&template=test&mailtemplate=test`, your template folder must contain the file `feedback_test.tpl` for the feedback form and `email_test.tpl` for the sent message template. These files support all the same tags as the standard feedback form and the standard e-mail message template in the admin panel. Thus, considering that feedback forms support additional fields of different types, you can organize several different feedback forms on your website.
