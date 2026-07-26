# Personal Messages

*DLE documentation topic #61*

The output of this section is configured in the **pm.tpl** file. This section configures the templates used to work with personal messages. Editing this section is not recommended without HTML knowledge because field names are used that are passed to the script through the form. In other words, you may edit the text as you wish, but do not change the field names, this is extremely important. The following tags can be used:

`[inbox]`
text
`[/inbox]` |  Link to the message list
---|---
`[new_pm]`
text
`[/new_pm]` |  Link to compose a message
`[pmlist]`
text
`[/pmlist]` |  Outputs the text in the tags if the message list is being viewed
`[readpm]`
text
`[/readpm]` |  Outputs the text in the tags if the conversation is being viewed
`[messages]`
text
`[/messages]` |  Outputs the enclosed text when showing messages in a conversation. This tag must be located inside the `[readpm]`text `[/readpm]` tags.
`{pmlist}` |  Outputs the list of received messages
`[newpm]`
text
`[/newpm]` |  Outputs the text in the tags if message composition is being shown
`{pm-limit}` |  Outputs the maximum number of messages that the user can store
`{proc-pm-limit}` |  Outputs the percentage of occupied inbox space
`{pm-progress-bar}` |  Outputs the fill indicator of the personal message inbox
`{author}` |  Outputs the message author
`{subj}` |  Conversation subject
`{editor}` |  Outputs the editor for writing a message
`{text}` |  Message text
`[pm-edit]`
text
`[/pm-edit]` |  Outputs a link for editing the message
`[reply]`
text
`[/reply]` |  Outputs a link for quoting a message or selected text
`[del]`
text
`[/del]` |  Link to delete the message. If the deleted message is the first one, the user then leaves the conversation.
`{sec_code}` |  CAPTCHA display code
`[sec_code]`
text
`[/sec_code]` |  Outputs the text if CAPTCHA usage has been enabled in the settings when writing personal messages
`{user-dialog}` |  Outputs a link to the profile of the user with whom the dialog is being conducted. This tag must be inside the `[readpm] text [/readpm]` tags.
`[self-dialog]`
text
`[/self-dialog]` |  Outputs the enclosed text if the user started a conversation with themselves and sent a message to themselves.
`[not-self-dialog]`
text
`[/not-self-dialog]` |  Outputs the enclosed text if the conversation is with another user.
`{foto}` |  Outputs the photo link
`{group-icon}` |  Outputs the participant group icon
`{group-name}` |  Outputs the participant group name
`{news-num}` |  Outputs the participant's number of news items
`{comm-num}` |  Outputs the participant's number of comments
`{login}` |  Outputs the login of the personal message author without any additional formatting
`{date=date format}` |  Outputs the date in the format specified in the tag. For example, the tag **{date=d}** outputs the day of the month of publication of the news item or comment, the tag **{date=F}** outputs the month name, and the tag **{date=d-m-Y H:i}** outputs the full date and time.
`{lastdate=date format}` |  Outputs the user's last website visit in the format specified in the tag. For example, the tag **{lastdate=d}** outputs the day of the month, the tag **{lastdate=F}** outputs the month name, and the tag **{lastdate=d-m-Y H:i}** outputs the full date and time.
`{registration=date format}` |  Outputs the user's registration date in the format specified in the tag. For example, the tag **{registration=d}** outputs the day of the month, the tag **{registration=F}** outputs the month name, and the tag **{registration=d-m-Y H:i}** outputs the full date and time.
`[signature]`
`{signature}`
`[/signature]` |  Outputs the text enclosed in the tags and the user's signature if the user has specified a signature in the profile
`{date}` |  Date of comment publication; the date output format is configured in the system settings
`{registration}` |  Outputs the date of registration on the website
`[recaptcha]`
text
`[/recaptcha]` |  Output the information enclosed in the tags if the reCAPTCHA type is enabled in the script settings
`{recaptcha}` |  Outputs the reCAPTCHA widget if this CAPTCHA output type is enabled in the script settings.
`[complaint]`
text
`[/complaint]` |  Outputs the text specified in the tags as a link for writing a complaint about a personal message.
`[ignore]`
text
`[/ignore]` |  Outputs links for adding the user to the ignore list.
`[online]`
text
`[/online]` |  Outputs the text if the user is online (within 20 minutes since the user's last website visit)
`[offline]`
text
`[/offline]` |  Outputs the text if the user is offline
`[xfgiven_x]`
text
`[/xfgiven_x]` |  Outputs the specified text if the user additional field was set, where X is the name of the user profile additional field
`[xfnotgiven_x]`
text
`[/xfnotgiven_x]` |  Outputs the specified text if the user additional field was not set, where X is the name of the user profile additional field
`[xfvalue_x]` |  Value of the user profile additional field "x", where "x" is the name of the additional field
`[xfvalue_X format="Format"]` |  Intended for outputting additional fields of the "Date and time" type where X is the name of the additional field and "Format" is the output format of the date and time set in the field. You can output this additional field in different date and time formats, not only in the default format specified in the field settings. For example, the tag `[xfvalue_test format="j F Y H:i"]` outputs the date and time stored in the field in the j F Y H:i format.
`[ifxfset fields="X"]`
text
`[/ifxfset]` |  Outputs the enclosed text if the field named X was specified and filled for the news item. You can also list several field names separated by commas. For example, `[ifxfset fields="test1,test2"]`both fields named test1 and test2 are filled`[/ifxfset]` will output the text if both fields were filled in the news item. The main difference from the existing `[xfgiven_x]` and `[xfnotgiven_x]` tags is that you can list several fields at the same time and the filled state of all listed fields is checked simultaneously, and it is the actual filled state that is checked; for example, if a field contains “0” or the value “no”, this is also considered a filled field in the publication.
`[ifxfnotset fields="X"]`
text
`[/ifxfnotset]` |  Outputs the enclosed text if the field named X was not specified and filled for the news item. You can also list several field names separated by commas. For example, `[ifxfnotset fields="test1,test2"]`both fields named test1 and test2 were not filled`[/ifxfnotset]` will output the text if both fields were not filled in the news item. The main difference from the existing `[xfgiven_x]` and `[xfnotgiven_x]` tags is that you can list several fields at the same time and the filled state of all listed fields is checked simultaneously, and it is the actual filled state that is checked; for example, if a field contains “0” or the value “no”, this is also considered a filled field in the publication.
`[declination=X]`
text
`[/declination]` |  Outputs word declensions relative to numbers. Instead of X, a number is passed as the parameter of the tag, and instead of "text" the root of the word with endings is passed. The word endings are listed using the "|" symbol. This tag is useful together with other tags that output, for example, the number of news views or the number of comments. For example, `[declination=`{comments-num}`]`comment|s||s`[/declination]` will output depending on the number of comments: "1 comment", "2 comments", "10 comments"
`[pm-author]`
text
`[/pm-author]` |  Outputs the enclosed text if the user viewing the conversation is the author of this message
`[not-pm-author]`
text
`[/not-pm-author]` |  Outputs the text if the user is not the author of this message
