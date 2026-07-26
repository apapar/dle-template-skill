# User Profile Card

*DLE documentation topic #52*

The output of this section is configured in the **profile_popup.tpl** file. This section configures the templates used when displaying the user profile card.

`{user-id}` |  Outputs the user ID. This tag can be used in a number of cases when designing the template and also, for example, for forming custom links such as links to the user's latest comments, and so on.
---|---
`{usertitle}` |  Outputs the user login
`{fullname}` |  Outputs the user's full name
`{foto}` |  Outputs a link to the uploaded photo
`{status}` |  User status
`{registration}` |  Date of registration on the website
`{lastdate}` |  Outputs the date of the user's last visit to the website
`{lastdate=date format}` |  Outputs the user's last website visit in the format specified in the tag. For example, the tag **{lastdate=d}** outputs the day of the month, the tag **{lastdate=F}** outputs the month name, and the tag **{lastdate=d-m-Y H:i}** outputs the full date and time.
`{registration=date format}` |  Outputs the user's registration date in the format specified in the tag. For example, the tag **{registration=d}** outputs the day of the month, the tag **{registration=F}** outputs the month name, and the tag **{registration=d-m-Y H:i}** outputs the full date and time.
`{comm-num}` |  Number of comments
`{news-num}` |  Number of news items
`{land}` |  Outputs the place of residence
`{info}` |  Short information about the user
`[info]`
text
`[/info]` |  Outputs the text enclosed in the tags if the user has entered short information about themselves in the profile
`{rate}` |  Current rating of the visitor's news items (calculated automatically based on the rating of their articles)
`[own-profile]`
text
`[/own-profile]` |  Output the enclosed text if the user is viewing their own profile on the website
`[not-own-profile]`
text
`[/not-own-profile]` |  Output the enclosed text if the user is viewing someone else's profile on the website
`[rating-type-1]`
text
`[/rating-type-1]` |  Output the enclosed text if the first rating type 'Score' is enabled for news in the script settings.
`[rating-type-2]`
text
`[/rating-type-2]` |  Output the enclosed text if the second rating type 'Likes Only' is enabled for news in the script settings.
`[rating-type-3]`
text
`[/rating-type-3]` |  Output the enclosed text if the third rating type 'Like' or 'Dislike' is enabled for news in the script settings.
`[comments-rating-type-1] `
text
``[/comments-rating-type-1]`` |  Output the enclosed text if the first rating type is enabled for comments in the script settings.
`[comments-rating-type-2]`
text
`[/comments-rating-type-2]` |  Output the enclosed text if the second rating type **'Likes Only'** is enabled for comments in the script settings.
`[comments-rating-type-3]`
text
`[/comments-rating-type-3]` |  Output the enclosed text if the third rating type **'Like' or 'Dislike'** is enabled for comments in the script settings.
`{commentsrate}` |  Outputs the total rating of all comments by this user.
`{ratingscore}` |  Outputs the average rating value of all user publications, from one to five, preserving the fractional value. For example, depending on the assigned rating, it may be 1.6 or 4.2, and so on. This tag makes it possible, for example, to create your own star rating design with partial filling rather than only 2 or 4 fully filled stars.
`{commentsratingscore}` |  Outputs the average rating value of all user comments, from one to five, preserving the fractional value. For example, depending on the assigned rating, it may be 1.6 or 4.2, and so on.
`[signature]`
text
`[/signature]` |  Outputs the text enclosed in the tags if the user has set a signature in the profile
`{signature}` |  Outputs the user's signature
`{group-icon}` |  Outputs the user's group icon
`{news}` |  Outputs a link to view all news by this user
`{comments}` |  Outputs a link to all comments by this user
`[rss]`
text
`[/rss]` |  Outputs a link in the profile to the RSS feed of all news by the user
`[fullname]`
text
`[/fullname]` |  Outputs the enclosed text only if the user's full name is specified
`[not-fullname]`
text
`[/not-fullname]` |  Outputs the text specified in the tags only if the user's full name is not specified
`[land]`
text
`[/land]` |  Outputs the enclosed text only if the user's place of residence has been specified
`[not-land]`
text
`[/not-land]` |  Outputs the text specified in the tags only if the user's place of residence has not been specified
`[news-num]`
text
`[/news-num]` |  Outputs the enclosed text if this user has published news items on the website
`[not-news-num]`
text
`[/not-news-num]` |  Outputs the enclosed text if this user has no news items on the website
`[comm-num]`
text
``[/comm-num]`` |  Outputs the enclosed text if this user has published comments on the website
`[not-comm-num]`
text
`[/not-comm-num]` |  Outputs the enclosed text if this user has no comments on the website
`[xfgiven_x]`
text
`[/xfgiven_x]` |  Outputs the text if the additional field "x" is not empty
`[xfnotgiven_x]`
text
`[/xfnotgiven_x]` |  Outputs the specified text if the user's additional field was not set, where X is the name of the user profile additional field
`[xfvalue_x]` |  Value of the additional field "x", where "x" is the name of the additional field
`[xfvalue_X format="Format"]` |  Intended for outputting additional fields of the “Date and time” type where X is the name of the additional field and “Format” is the output format of the date and time set in the field. You can output this additional field in different date and time formats, not only in the default format specified in the field settings. For example, the tag `[xfvalue_test format="j F Y H:i"]` outputs the date and time set in the field in the j F Y H:i format.
`[ifxfset fields="X"]`
text
`[/ifxfset]` |  Outputs the enclosed text if the field named X was set and filled for the news item. You can also list several field names separated by commas. For example, `[ifxfset fields="test1,test2"]`both fields named test1 and test2 are filled`[/ifxfset]` will output the text if both fields were filled in the news item. The main difference from the existing `[xfgiven_x]` and `[xfnotgiven_x]` tags is that you can list several fields at the same time and the filled state of all listed fields is checked simultaneously, and it is the actual field completion that is checked. For example, if a field contains “0” or the value “no”, it is still considered a filled field in the publication.
`[ifxfnotset fields="X"]`
text
`[/ifxfnotset]` |  Outputs the enclosed text if the field named X was not set and filled for the news item. You can also list several field names separated by commas. For example, `[ifxfnotset fields="test1,test2"]`both fields named test1 and test2 are not filled`[/ifxfnotset]` will output the text if both fields were not filled in the news item. The main difference from the existing `[xfgiven_x]` and `[xfnotgiven_x]` tags is that you can list several fields at the same time and the filled state of all listed fields is checked simultaneously, and it is the actual field completion that is checked. For example, if a field contains “0” or the value “no”, it is still considered a filled field in the publication.
`[online]`
text
`[/online]` |  Outputs the text if the user is online (20 minutes since the user's last website visit)
`[offline]`
text
`[/offline]` |  Outputs the text if the user is offline
`[profile-user-group=X]`
Text
`[/profile-user-group]` |  Outputs the enclosed text if the group of the user whose profile is being viewed belongs to the specified group X, where X is the group number. Listing multiple required groups separated by commas is also allowed.
`[not-profile-user-group=X]`
Text
`[/not-profile-user-group]` |  Outputs the enclosed text if the group of the user whose profile is being viewed does not belong to the specified group X, where X is the group number.
`[ignore]`
text
`[/ignore]` |  Outputs the enclosed text as a link for adding the user to the ignore list
`[banned]`
text
`[/banned]` |  Outputs the enclosed text if the user is currently banned on the website
`[not-banned]`
text
`[/not-banned]` |  Outputs the enclosed text if the user is not banned on the website
`{ban-description}` |  Outputs the reason why the user is banned
`{ban-date}` |  Outputs the date until which the user was banned on the website
`[if field = "value"]`
text
`[/if]` |  Output the enclosed text if the field value is equal to the specified value. `[if field = "value"]` text `[/if]` \- outputs the text if the field is equal to the parameter 'value' `[if field != "value"]`text`[/if]` \- outputs the text if the field is not equal to the parameter 'value' `[if field > "1"]` text `[/if]` \- outputs the text if the field is greater than the parameter 'value' `[if field >= "2"]` text `[/if]` \- outputs the text if the field is greater than or equal to the parameter 'value' `[if field < "3"]` text `[/if]` \- outputs the text if the field is less than the parameter 'value' `[if field <= "4"]` text `[/if]` \- outputs the text if the field is less than or equal to the parameter 'value' `[if field ~ "value"]` text `[/if]` \- outputs the text if the field contains the text 'value' `[if field !~ "value"]` text `[/if]` \- outputs the text if the field does NOT contain the text 'value' Combined usage: `[if field > "3" AND field2 < "5"]` text `[/if]` outputs the text if field is greater than three and field2 is less than 5 `[if field > "3" OR field2 < "5"]` text `[/if]` outputs the text if field is greater than three or field2 is less than 5, that is, if any one of the conditions matches Field names that **field** can take: **name** \- User login. (text) **email** \- User E-mail (text) **user_id** \- Unique user ID number (number) **news_num** \- Number of user publications (number) **comm_num** \- Number of user comments (number) **user_group** \- User group (number) **lastdate** \- Date of the user's last visit (date in English format, for example "2020-09-01" or "10 September 2020" or "next Thursday" or "+1 day" or "next Thursday" or in unix format; if equality is used, the date is rounded to the minute) **reg_date** \- Date of user registration (date in English format, for example "2020-09-01" or "10 September 2020" or "next Thursday" or "+1 day" or "next Thursday" or in unix format; if equality is used, the date is rounded to the minute) **allow_mail** \- Whether the user allowed receiving e-mails from the website (number 1 or 0) **info** \- User information about themselves (text) **signature** \- User signature (text) **fullname** \- User full name (text) **land** \- User place of residence (text) **foto** \- Link to the user avatar (text) **pm_all** \- Number of user personal messages (number) **pm_unread** \- Number of unread personal messages of the user (number) **restricted** \- Whether restrictions are imposed on the user (number 0 - no restrictions, 1 - prohibition on adding publications, 2 - prohibition on adding comments, 3 - prohibition on publications and comments) **restricted_days** \- Number of days for which the restriction is imposed (number) **restricted_date** \- Date until which restrictions are imposed on the user (date in English format, for example "2020-09-01" or "10 September 2020" or "next Thursday" or "+1 day" or "next Thursday" or in unix format; if equality is used, the date is rounded to the minute) **logged_ip** \- IP with which the user logged into the website (text) **timezone** \- User time zone in time zone format, for example Europe/Moscow (text) **news_subscribe** \- Whether the user is subscribed to notifications about new publications (number 1 or 0) **comments_reply_subscribe** \- Whether the user is subscribed to notifications about replies to their comments (number 1 or 0) **twofactor_auth** \- Whether the user enabled two-factor authentication (number 1 or 0) **cat_allow_addnews** \- Categories in which the user is allowed to add publications (array of category IDs) **cat_add** \- Categories that are trusted for the user when adding publications (array of category IDs) **xfield_x** \- Value of the user's additional field, where x is the name of the additional field. For example, xfield_test is the value of the test additional field
