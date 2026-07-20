# Authorization Panel on the Website

*DLE documentation topic #39*

The output of this section is configured in the **login.tpl** file. This section configures the display of the visitor authorization panel on the website. The following tags can be used:

`{registration-link}` |  Link to the visitor registration page
---|---
`{lostpassword-link}` |  Link to the password recovery page
`{login}` |  User login
`{logout-link}` |  Link to log the user out on the website
`{admin-link}` |  Link to the script admin panel
`{pm-link}` |  Link to the personal messages page
`{new-pm}` |  Number of new personal messages
`{all-pm}` |  Total number of personal messages
`{favorite-count}` |  Number of news items the user has added to bookmarks on the website
`{foto}` |  Link to the user avatar.
`[admin-link]`
text
`[/admin-link]` |  Outputs the text inside the tags if the user has access to the script admin panel
`{profile-link}` |  Link to the user profile
`{stats-link}` |  Link to website statistics
`{addnews-link}` |  Link to the page for adding news on the website
`{favorites-link}` |  Link to view the user's bookmarks
`{newposts-link}` |  Link to view unread news for the user since their last visit to the website
`{group-icon}` |  Outputs the user group icon
`{login-method}` |  Depending on the authorization type configured in the script settings, outputs what the user must enter: login or email
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
`[xfgiven_x]`
text
`[/xfgiven_x]` |  Outputs the text enclosed in the tags if the additional field "x" has been specified in the user profile
`[xfnotgiven_x]`
text `[/xfnotgiven_x]` |  Outputs the text specified in these tags if the user profile additional field was not specified, where X is the name of the user profile additional field
`[xfvalue_x]` |  Outputs the value of the additional field "x", where "x" is the name of the additional field
`{group}` |  Outputs the name of the website user group the user currently belongs to
