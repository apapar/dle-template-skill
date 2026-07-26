# Comments

*DLE documentation topic #42*

The output of this section is configured in the **comments.tpl** file. This section configures the display of comments for an article.

`{author}`| Outputs a link to the information and profile of the user who left the comment
---|---
`{mail}`| Outputs the e-mail of the person who left the comment
`{date}`| Date of comment publication; the date output format is configured in the system settings
`{comment}`| Comment text
`{comment limit="X"}`| Outputs the comment text without HTML formatting, while the comment text itself is shortened to the specified "x" number of characters.
`{comment-id}`| Comment identification number
`{ip}`| IP address of the person who left the comment; viewing is available only to website administrators
`[com-edit]`
text
`[/com-edit]`| Link to edit the comment only if this is allowed
`[com-del]`
text
`[/com-del]`| Link to delete the comment only if this is allowed
`{news_title}`| Outputs a link to the news item when viewing recent comments; when outputting comments inside the news item, the tag is removed
`{news-title}`| Outputs the HTML-safe title of the news item to which this comment belongs when viewing recent comments. When outputting comments in the news item, the tag is removed. This tag is useful when using custom comment output and when displaying recent comments.
`{news-link}`| Outputs the URL of the news item to which this comment belongs when viewing recent comments. When outputting comments in the news item, the tag is removed. This tag is useful when using custom comment output and when displaying recent comments.
`[images]`
text
`[/images]`| Output the enclosed text if images have been uploaded for the comment
`{images}`| Outputs all images uploaded for the comment as an image gallery
`{foto}`| Outputs the photo link
`{fullname}`| Outputs the user's full name
`{land}`| Outputs the place of residence
`[signature]`
text
`[/signature]`| Outputs the text enclosed in the tags if the user has set a signature in the profile
`{signature}`| Outputs the user's signature
`{registration}`| Outputs the registration date on the website
`{lastdate}`| Outputs the date of the user's last website visit.
`{lastdate=date format}`| Outputs the user's last website visit in the format specified in the tag. For example, the tag **{lastdate=d}** outputs the day of the month, the tag **{lastdate=F}** outputs the month name, and the tag **{lastdate=d-m-Y H:i}** outputs the full date and time.
`{registration=date format}`| Outputs the user's registration date in the format specified in the tag. For example, the tag **{registration=d}** outputs the day of the month, the tag **{registration=F}** outputs the month name, and the tag **{registration=d-m-Y H:i}** outputs the full date and time.
`[fast]`
text
`[/fast]`| Quick quote of comments
`{group-icon}`| Outputs the participant group icon
`{group-name}`| Outputs the participant group name
`{news-num}`| Outputs the participant's number of news items
`{comm-num}`| Outputs the participant's number of comments
`{date=date format}`| Outputs the date in the format specified in the tag. This allows you to output not only the full date but also its individual parts. The date format is defined according to the format accepted in PHP. For example, the tag **{date=d}** outputs the day of the month of publication of the news item or comment, the tag **{date=F}** outputs the month name, and the tag **{date=d-m-Y H:i}** outputs the full date and time
`{login}`| Outputs the comment author's login without any links or menus
`[profile]`
text
`[/profile]`| Outputs the text enclosed in the tag as a link to the profile of the user who left the comment
`{mass-action}`| Enables mass selection of comments for performing bulk actions on the website
`[complaint]`
text
`[/complaint]`| Outputs the text specified in the tags as a link for writing a complaint about the comment.
`[xfgiven_x]`
text
`[/xfgiven_x]`| Outputs the text if the additional field "x" is not empty
`[xfnotgiven_x]`
text
`[/xfnotgiven_x]`| Outputs the specified text if the user's additional field was not set, where X is the name of the user profile additional field
`[xfvalue_x]`| Value of the additional field "x", where "x" is the name of the additional field
`[xfvalue_X format="Format"]`| Intended for outputting additional fields of the “Date and time” type where X is the name of the additional field and “Format” is the output format of the date and time set in the field. You can output this additional field in different date and time formats, not only in the default format specified in the field settings. For example, the tag `[xfvalue_test format="j F Y H:i"]` outputs the date and time set in the field in the j F Y H:i format.
`[ifxfset fields="X"]`
text
`[/ifxfset]`| Outputs the enclosed text if the field named X was set and filled for the news item. You can also list several field names separated by commas. For example, `[ifxfset fields="test1,test2"]`both fields named test1 and test2 are filled`[/ifxfset]` will output the text if both fields were filled in the news item. The main difference from the existing `[xfgiven_x]` and `[xfnotgiven_x]` tags is that you can list several fields at the same time and the filled state of all listed fields is checked simultaneously, and it is the actual field completion that is checked. For example, if a field contains “0” or the value “no”, it is still considered a filled field in the publication.
`[ifxfnotset fields="X"]`
text
`[/ifxfnotset]`| Outputs the enclosed text if the field named X was not set and filled for the news item. You can also list several field names separated by commas. For example, `[ifxfnotset fields="test1,test2"]`both fields named test1 and test2 are not filled`[/ifxfnotset]` will output the text if both fields were not filled in the news item. The main difference from the existing `[xfgiven_x]` and `[xfnotgiven_x]` tags is that you can list several fields at the same time and the filled state of all listed fields is checked simultaneously, and it is the actual field completion that is checked. For example, if a field contains “0” or the value “no”, it is still considered a filled field in the publication.
`[fullname]`
text
``[/fullname]``| Outputs the enclosed text only if the user's full name is specified
`[not-fullname]`
text
`[/not-fullname]`| Outputs the text specified in the tags only if the user's full name is not specified
`[land]`
text
`[/land]`| Outputs the enclosed text only if the user's place of residence has been specified
`[not-land]`
text
`[/not-land]`| Outputs the text specified in the tags only if the user's place of residence has not been specified
`[news-num]`
text
`[/news-num]`| Outputs the enclosed text if this user has published news items on the website
`[not-news-num]`
text
`[/not-news-num]`| Outputs the enclosed text if this user has no news items on the website
`[comm-num]`
text
``[/comm-num]``| Outputs the enclosed text if this user has published comments on the website
`[not-comm-num]`
text
`[/not-comm-num]`| Outputs the enclosed text if this user has no comments on the website
`[online]`
text
`[/online]`| Outputs the text if the user is online (20 minutes since the user's last website visit)
`[offline]`
text
`[/offline]`| Outputs the text if the user is offline
`[spam]`
Spammer
`[/spam]`| Outputs the text specified in the tags as a link which, when clicked, marks the visitor who left the comment as a "spammer"
`[declination=X]`
text
`[/declination]`| Outputs word declensions relative to numbers. Instead of X, a number is passed as the parameter of the tag, and instead of "text" the root of the word with endings is passed. The word endings are listed using the "|" symbol. This tag is useful together with other tags that output, for example, the number of news views or the number of comments. For example `[declination=`{comments-num}`]`comment|s||s`[/declination]` will output depending on the number of comments: "comment", "comments", "comments"
`[commentsgroup=1,2,3]`
text
`[/commentsgroup]`| Outputs the enclosed text if the comment was written by a user belonging to the listed groups
`[not-commentsgroup=1,2,3]`
text
`[/not-commentsgroup]`| Outputs the enclosed text if the comment was written by a user who does not belong to the specified groups
`[commentscount=x]`
text
`[/commentscount]`| Outputs the text specified in the tags if the Xth comment is being shown, where X is the number of the comment displayed on the page. For example, `[commentscount=1]` text `[/commentscount]` will show the text when the first comment on the page is displayed. This tag is useful for webmasters who want, for example, to control where ads are shown between comments on the website. For example, code added at the very end of the template `[commentscount=1,10]` ad code `[/commentscount]` will show ads after the first and tenth comment.
`[not-commentscount=X]`
text
`[/not-commentscount]`| Outputs the text enclosed in these tags for all comments by position except the comments specified by **X**. This tag is useful if you want to display some design elements for all comments except the specified ones. For example, to hide something in the first comment in the list.
`[rating-type-1]`
text
`[/rating-type-1]`| Outputs the enclosed text if the first rating type 'Score' is enabled in the script settings.
`[rating-type-2]`
text
`[/rating-type-2]`| Outputs the enclosed text if the second rating type 'Likes Only' is enabled in the script settings.
`[rating-type-3]`
text
`[/rating-type-3]`| Outputs the enclosed text if the third rating type 'Like' or 'Dislike' is enabled in the script settings.
`[rating-type-4]`
text
`[/rating-type-4]`| Outputs the enclosed text if the fourth rating type 'Like' and 'Dislike' is enabled in the settings.
`[rating-minus]`
text
`[/rating-minus]`| Outputs the enclosed text as a link for decreasing the comment rating. This link is displayed only if the third and fourth rating types are used.
`[rating-plus]`
text
`[/rating-plus]`| Outputs the enclosed text as a link for increasing the comment rating. This link is displayed only if the second, third, and fourth rating types are used.
`{rating}`| Outputs the rating assigned to the comment.
`{likes}`| Outputs the number of likes
`{dislikes}`| Outputs the number of dislikes
`{vote-num}`| Outputs the number of users who rated this comment.
`{ratingscore}`| Outputs the average rating value from one to five, preserving the fractional value. For example, depending on the assigned rating, it may be 1.6 or 4.2, and so on.
`[reply]`
text
`[/reply]`| Outputs the text inside the tags as a link to open a popup window for replying to a comment if threaded comments are enabled; if threaded comments are disabled, it inserts the login of the selected commenter into the comment submission form
`[replycount]`
text
`[/replycount]`| Outputs the enclosed text if the comment has replies from other users
`[not-replycount]`
text
`[/not-replycount]`| Outputs the enclosed text if there are no replies to the comment
`[treecomments]`
text
`[/treecomments]`| Outputs the enclosed text if threaded comments are enabled in the script settings.
`[not-treecomments]`
text
`[/not-treecomments]`| Outputs the enclosed text if threaded comments are disabled.
`[rootcomments]`
text
`[/rootcomments]`| Outputs the enclosed text if the comment is the main parent comment for the news item and is not a reply to another comment.
`[childrencomments]`
text
`[/childrencomments]`| Outputs the enclosed text if the comment is a reply to another comment.
`{replycount}`| Outputs the number of replies to this comment
`[comments-author]`
text
`[/comments-author]`| Outputs the enclosed text if the user viewing the website page is the author of this comment
`[not-comments-author] `
text
`[/not-comments-author]`| Outputs the enclosed text if the user viewing the website page is not the author of this comment
`[news-author]`
text
`[/news-author]`| Outputs the enclosed text if the comment belongs to the author of this news item
`[not-news-author]`
text
`[/not-news-author]`| Outputs the enclosed text if the comment does not belong to the author of this news item
`[positive-comment]`
text
`[/positive-comment]`| Outputs the enclosed text if the comment has a positive rating
`[negative-comment]`
text
`[/negative-comment]`| Outputs the enclosed text if the comment has a negative rating
`[neutral-comment]`
text
`[/neutral-comment]`| Outputs the enclosed text if the comment has a neutral rating
`[catlist=1,2....]`
text
`[/catlist]`| Outputs the text in the tag if the news item belongs to the specified categories
`[not-catlist=1,2....]`
text
`[/not-catlist]`| Outputs the text in the tag if the news item does not belong to the specified categories.
`{banner_X}`| Outputs advertising from the advertising materials module in the admin panel, where X is the name of the advertising banner
`[if field = "value"]`
text
`[/if]`| Outputs the enclosed text if the field value is equal to the specified value.`[if field = "value"]` text `[/if]` \- outputs the text if the field is equal to the parameter 'value'`[if field != "value"]`text`[/if]` \- outputs the text if the field is not equal to the parameter 'value'`[if field > "1"]` text `[/if]` \- outputs the text if the field is greater than the parameter 'value'`[if field >= "2"]` text `[/if]` \- outputs the text if the field is greater than or equal to the parameter 'value'`[if field < "3"]` text `[/if]` \- outputs the text if the field is less than the parameter 'value'`[if field <= "4"]` text `[/if]` \- outputs the text if the field is less than or equal to the parameter 'value'`[if field ~ "value"]` text `[/if]` \- outputs the text if the field contains the text 'value'`[if field !~ "value"]` text `[/if]` \- outputs the text if the field does NOT contain the text 'value'Combined usage:`[if field > "3" AND field2 < "5"]` text `[/if]` outputs the text if field is greater than three and field2 is less than 5`[if field > "3" OR field2 < "5"]` text `[/if]` outputs the text if field is greater than three or field2 is less than 5, that is, if any one of the conditions matchesField names that **field** can take:**id** \- Unique comment ID number (number)**post_id** \- Unique publication ID number (number)**user_id** \- Unique ID of the user who left the comment if they are registered (number)**date** \- Comment date (date in English format, for example "2020-09-01" or "10 September 2020" or "next Thursday" or "+1 day" or "next Thursday" or in unix format; if equality is used, the news date is rounded to the minute)**gast_name** \- Comment author login (text)**gast_email** \- Comment author E-mail (text)**ip** \- IP of the user who left the comment (text)**is_register** \- Whether the comment author is registered on the website (number 1 or 0)**rating** \- Total comment rating (number)**vote_num** \- Number of votes in the comment rating (number)**name** \- Login of the comment author if registered. (text)**email** \- E-mail of the comment author if registered (text)**news_num** \- Number of publications by the comment author if registered (number)**comm_num** \- Number of comments by the comment author if registered (number)**user_group** \- Group of the comment author if registered (number)**lastdate** \- Date of the last visit of the comment author if registered (date in English format, for example "2020-09-01" or "10 September 2020" or "next Thursday" or "+1 day" or "next Thursday" or in unix format; if equality is used, the news date is rounded to the minute)**reg_date** \- Registration date of the comment author if registered (date in English format, for example "2020-09-01" or "10 September 2020" or "next Thursday" or "+1 day" or "next Thursday" or in unix format; if equality is used, the news date is rounded to the minute)**signature** \- Signature of the comment author if registered (text)**foto** \- Link to the avatar of the comment author if registered (text)**fullname** \- Full name of the comment author if registered (text)**land** \- Place of residence of the comment author if registered (text)**xfield_x** \- Value of the user's profile additional field, where x is the name of the additional field. For examplexfield_test** is the value of the test additional field
