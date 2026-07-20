# Password Recovery

*DLE documentation topic #59*

The output of this section is configured in the **lostpassword.tpl** file. This section configures the templates used when displaying the password recovery form sent to E-Mail. Editing this section is not recommended without HTML knowledge because field names are used that are passed to the script through the form. In other words, you may edit the text as you wish, but do not change the field names, this is extremely important. The following tags can be used:

`{code}` \- Outputs the CAPTCHA display code

`[sec_code]` text `[/sec_code]`Outputs the text if the standard CAPTCHA is enabled in the script settings

`[recaptcha]` text `[/recaptcha]`Outputs the text if reCAPTCHA or another external CAPTCHA service is enabled in the script settings

`{recaptcha}`Outputs the reCAPTCHA widget if this CAPTCHA output type is enabled in the script settings
