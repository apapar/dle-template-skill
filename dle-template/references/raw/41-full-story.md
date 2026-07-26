# Full Story

*DLE documentation topic #41*

Full article output is configured in the file **fullstory.tpl** and supports the following tags:

`{title}` |  Article title
---|---
`{title limit="x"}` |  Displays the news title truncated to X characters.
`{full-story}` |  Full version
`{short-story}` |  Short story version
`{full-story limit="x"}` |  Displays only the full story text without HTML formatting, while truncating the publication text to the specified X number of characters.
`{author}` |  Article author
`{date}` |  Publication date
`[new]`
text
`[/new]` |  Display the text inside them if the publication is considered new, that is, if less than the configured time has passed since publication.
`[not-new]`
text
`[/not-new]` |  Display the text inside them if more than the configured time has passed since publication.
`[updated]`
text
`[/updated]` |  Display the text inside them if the publication is considered updated, that is, if less than the configured time has passed since editing.
`[not-updated]`
text
`[/not-updated]` |  Display the text inside them if more than the configured time has passed since editing.
`{pages}` |  News page navigation
`[pages]`
text
`[/pages]` |  Display the specified text inside the tags if the news item is split into several pages using the tag **{PAGEBREAK}** and remove the text inside it if the news item consists of a single page.
`{link-category}` |  Link to all categories the news item belongs to
`{rating}` |  Displays the publication rating
`[rating]` text
`[/rating]` |  Display the text inside them only if rating is enabled for the news item, and remove the content if rating was disabled when adding the news item.
`[rating-type-1]`
text
`[/rating-type-1]` |  Display the text inside them if the first rating type, "Rating", is enabled in the script settings.
`[rating-type-2]`
text
`[/rating-type-2]` |  Display the text inside them if the second rating type, "Likes Only", is enabled in the script settings.
`[rating-type-3]`
text
`[/rating-type-3]` |  Display the text inside them if the third rating type, "Like" or "Dislike", is enabled in the script settings.
`[rating-type-4]`
text
`[/rating-type-4]` |  Display the text inside the tag if the fourth rating type, "Like" and "Dislike", is enabled in the settings.
`[rating-minus]`
text
`[/rating-minus]` |  Display the text inside them as a link to decrease the publication rating. This link is shown only when the third rating type is used.
`[rating-plus]`
text
`[/rating-plus]` |  Display the text inside them as a link to increase the publication rating. This link is shown only when the second or third rating type is used.
`{likes}` |  Displays the number of likes
`{dislikes}` |  Displays the number of dislikes
`{vote-num}` |  Displays the number of users who rated this news item
`{ratingscore}` |  Displays the average rating value from one to five while preserving decimals. For example, depending on the rating, it may be 1.6 or 4.2, and so on.
`{comments-num}` |  Allows you to display the number of comments for the article
`{category}` |  The category the article belongs to
`{category-url}` |  Displays the full URL of the category this news item belongs to. This tag outputs only the raw URL without formatting or a ready-made link.
`{category-icon}` |  Link to the category icon
`[category-icon]`
text
`[/category-icon]` |  Displays the text enclosed in these tags if an icon has been specified in the category settings for the category to which the publication belongs.
`[not-category-icon]`
text
`[/not-category-icon]` |  Displays the text if no icon has been specified for the category to which the publication belongs.
`[has-category]`
text
`[/has-category]` |  Displays the text enclosed in these tags if the publication belongs to any category.
`[not-has-category]`
text
`[/not-has-category]` |  Displays the text enclosed in these tags if the publication has no categories.
`{views}` |  Number of news views
`{favorites}` |  Link to add or remove from Favorites
`[add-favorites]`
text
`[/add-favorites]` |  Display text in nandkh in inandde ssylkand on dobainlenande news item in zakladkand on site
`[del-favorites]`
text
`[/del-favorites]` |  Displays the text enclosed in these tags as a link for removing the news item from bookmarks on the site.
`[edit]`
text
`[/edit]` |  Link to edit the news item
`[del]`
text
`[/del]` |  Displays a link for deleting the publication from the site for users.
`[print-link]`
text
`[/print-link]` |  Link to the print version
`[com-link]`
text
`[/com-link]` |  Link to the article comments, only if they are allowed
`[xfvalue_x]` |  Value of the extra field "x", where "x" is the extra field name
`[xfvalue_X limit="X2"]` |  Displays only the extra field text without HTML formatting, while truncating the text to the specified X2 number of characters. The text is truncated to the last logical word. For example `[xfvalue_test limit="50"]` will display only the first 50 characters of the extra field value named test
`[xfgiven_x]`
text`
[/xfgiven_x]` |  Display the text inside them if the extra field "x" is not empty
`[xfnotgiven_X]`
text
`[/xfnotgiven_X]` |  Display the text inside them if the extra field was not set when publishing the news item, where "x" is the extra field name
`[ifxfvalue tagname="tagvalue"]`
Text
`[/ifxfvalue]` |  Display the text inside them if the extra field value matches the specified value. Where **tagname** this is the extra field name, and **tagvalue** this is its value. Values **tagvalue** can be listed separated by commas.
`[ifxfvalue tagname!="tagvalue"]`
Text
`[/ifxfvalue]` |  Display the text inside them if the field value does not match the specified value. Where **tagname** this is the extra field name, and **tagvalue** this is its value. Values **tagvalue** can be listed separated by commas.
`[xfvalue_thumb_url_X]` |  This tag can be used only if the extra field has the "Image" type. The tag outputs only the URL of the thumbnail image, where "x" is the extra field name
`[xfvalue_image_url_X]` |  This tag can be used only if the extra field has the "Image" type. The tag outputs only the URL of the full-size uploaded image, where "x" is the extra field name
`[xfvalue_image_description_X]` |  This tag can be used only if the extra field has the "Image" type. The tag outputs only the description of the uploaded image, where "x" is the extra field name.
`[xfvalue_X image="Nr"]` |  Displays images uploaded to the "Gallery" type extra field individually. Where "X" is the extra field name and "Nr" is the gallery image number. For example, when using `[xfvalue_test image="2"]` the second image uploaded to the extra field named "test" will be displayed.
`[xfvalue_X image-url="Nr"]` |  Displays the URLs of full-size images uploaded to the "Gallery" type extra field individually. Where "X" is the extra field name and "Nr" is the gallery image number.
`[xfvalue_X image-thumb-url="Nr"]` |  Displays the URLs of thumbnails uploaded to the "Gallery" type extra field individually. Where "X" is the extra field name and "Nr" is the gallery image number.
`[xfvalue_X image-description="Nr"]` |  Displays the descriptions of images uploaded to the "Gallery" type extra field individually. Where "X" is the extra field name and "Nr" is the gallery image number.
`[xfgiven_X image="NR"]`
text
`[/xfgiven_X image="NR"]` |  Display the text inside them if an image with the specified number exists and is uploaded in the extra field, where X is the extra field name and NR is the image number
`[xfnotgiven_X image="NR"]`
Text
`[/xfnotgiven_X image="NR"]` |  Display the text inside them if an image with the specified number is missing in the extra field, where X is the extra field name and NR is the image number
`[ifxfset fields="X"]`
text
`[/ifxfset]` |  Displays the text enclosed in these tags if a field named X has been specified and filled in for the news item. You can list several field names separated by commas. For example, `[ifxfset fields="test1,test2"]both fields named test1 and test2 are filled[/ifxfset]` will display the text if both fields have been filled in the news item. The main difference from the existing `[xfgiven_x]` and `[xfnotgiven_x]` tags is that you can list several fields at once, and the fill state of all listed fields is checked simultaneously. The check is based specifically on whether the fields are filled, regardless of their values; for example, if a field contains "0" or the value "no", it is still considered filled in the publication.
`[ifxfnotset fields="X"]`
text
`[/ifxfnotset]` |  Displays the text enclosed in these tags if a field named X has not been specified and filled in for the news item. You can also list several field names separated by commas. For example, `[ifxfnotset fields="test1,test2"]both fields named test1 and test2 were not filled[/ifxfnotset]` will display the text if both fields have not been filled in the news item. The main difference from the existing `[xfgiven_x]` and `[xfnotgiven_x]` tags is that you can list several fields at once, and the fill state of all listed fields is checked simultaneously. The check is based specifically on whether the fields are filled, regardless of their values; for example, if a field contains "0" or the value "no", it is still considered filled in the publication.
`[xfvalue_X video="Nr"]` |  Displays videos uploaded to the "Video playlist" type extra field individually by selected number. Where "X" is the extra field name and "Nr" is the video number in the playlist.
`[xfvalue_X video-url="Nr"]` |  Displays the URLs of uploaded items from the "Video playlist" type extra field individually. Where "X" is the extra field name and "Nr" is the video number in the playlist
`[xfvalue_X video-description="Nr"]` |  Displays video descriptions from the "Video playlist" type extra field individually. Where "X" is the extra field name and "Nr" is the video number in the playlist
`[xfgiven_X video="Nr"]`
Text
`[/xfgiven_X video="Nr"]` |  Display the text inside them if a video with the specified number exists and is uploaded in the extra field, where X is the extra field name and Nr is the video number
`[xfnotgiven_X video="Nr"]`
Text
`[/xfnotgiven_X video="Nr"]` |  Display the text inside them if a video with the specified number is missing in the extra field, where X is the extra field name and NR is the video number
`[xfvalue_X audio="Nr"]` |  Displays items uploaded to the "Audio playlist" type extra field individually. Where "X" is the extra field name and "Nr" is the audio file number in the playlist
`[xfvalue_X audio-url="Nr"]` |  Displays the URLs of uploaded items from the "Audio playlist" type extra field individually. Where "X" is the extra field name and "Nr" is the audio file number in the playlist
`[xfvalue_X audio-description="Nr"]` |  Displays audio file descriptions from the "Audio playlist" type extra field individually. Where "X" is the extra field name and "Nr" is the audio file number in the playlist
`[xfgiven_X audio="Nr"]`
text
`[/xfgiven_X audio="Nr"]` |  Display the text inside them if an audio item with the specified number exists and is uploaded in the extra field, where X is the extra field name and Nr is the audio file number
`[xfnotgiven_X audio="Nr"]`
Text
`[/xfnotgiven_X audio="Nr"]` |  Display the text inside them if an audio item with the specified number is missing in the extra field, where X is the extra field name and Nr is the audio file number
`[xfvalue_X format="Format"]` |  Used to display extra fields of the "Date and time" type, where X is the extra field name and "Format" is the output format for the date and time specified in the field. You can display this extra field in different date and time formats, not only the default field format. For example, the tag `[xfvalue_test format="j F Y H:i"]` will display the date and time from the field in the j F Y H:i format.
`[ifprofilexfset fields="X"]`
text
`[/ifprofilexfset]` |  Displays the text enclosed in these tags if an extra field named X has been specified and filled in for the profile of the publication author. You can list several field names separated by commas. For example, `[ifprofilexfset fields="test1,test2"]both fields named test1 and test2 are filled[/ifprofilexfset]` will display the text if both fields have been filled in.
`[ifprofilexfnotset fields="X"]`
text
`[/ifprofilexfnotset]` |  Displays the text enclosed in these tags if a field named X has not been specified and filled in. You can also list several field names separated by commas. For example, `[ifprofilexfnotset fields="test1,test2"]both fields named test1 and test2 were not filled[/ifprofilexfnotset]` will display the text if both fields have not been filled in.
`[group=X]`
text
`[/group]` |  Displays text for a specific user group. X is a comma-separated list of user group IDs.
`{related-news}` |  Display links to the 5 most contextually relevant news items.
`[catlist=1,2....]`
text
`[/catlist]` |  Displays the text inside the tag if the news item belongs to the specified categories
`[not-catlist=1,2....]`
text `[/not-catlist]` |  Displays the text inside the tag if the news item does not belong to the specified categories.
`[tags]`
text
`[/tags]` |  Displays text if the news item contains keywords assigned to the tag cloud
`{tags}` |  Displays clickable news keywords
`{full-link}` |  Outputs the full permanent URL of the news item
`[edit-date]`
text
`[/edit-date]` |  Displays text if the news item was edited
`{edit-date}` |  Displays the news edit date
`{edit-date=date format}` |  Displays the publication edit date in the format specified in the tag. This allows you to define your own edit date format or output not only the whole date, but also its individual parts. The date format is set according to the format used in PHP. For example, the tag **{edit-date=d}** will display the day of the month, and the tag **{edit-date=F}** will display the month name, and the tag **{edit-date=d-m-Y H:i}** will display the full date and time
`{editor}` |  Displays the username of the user who edited the news item
`[edit-reason]`
text
`[/edit-reason]` |  Displays text if an edit reason was specified
`{edit-reason}` |  Displays the reason for editing the news item
`{poll}` |  Includes the poll template for the news item if a poll was added to it.
`{date=date format}` |  Displays the date in the format specified in the tag. This allows you to output not only the whole date, but also its individual parts. The date format is defined according to the format used in PHP. For example, the tag `{date=d}` will output the day of the month of the publication or comment, the tag `{date=F}` will output the month name, and the tag `{date=d-m-Y H:i}` will output the full date and time.
`[fixed]`
text
`[/fixed]` |  Displays the text inside the tags if this news item is pinned
`[not-fixed]`
text
`[/not-fixed]` |  Displays the text inside the tags if this news item was not pinned
`[day-news]`
text
`[/day-news]` |  Displays a link to all news items published on the same day as this news item. This tag can, for example, be used together with the `{date}` tag.
`{comments}` |  Displays the comments posted for this news item. This tag is useful if you need to place comments inside the overall full story design. This tag is optional; if it is missing, comments will be placed automatically by the script below the full story.
`{addcomments}` |  Displays the form for adding comments to the site. Together with the new tag `{comments}` you can place the comment form both above and below the comments themselves. This tag is also optional; if it is missing, the form will be placed automatically by the script below the full story.
`{navigation}` |  Displays comment navigation if comments are split across several pages. Together with the new tag `{comments}` you can place comment navigation both above and below the comments themselves. This tag is also optional; if it is missing, navigation will be placed automatically by the script below the full story.
`{login}` |  Displays the username of the user who added the news item as plain text without profile or usercard links.
`{related-ids}` |  Displays the list of IDs of related publications for this news item. This tag is useful when used together with the `{custom ...}` tag, for example `{custom id="{related-ids}"}`.
`[related-news]`
text
`[/related-news]` |  Display the information inside the tags only if related news exists for this item; otherwise, the information is removed from the template.
`[poll]`
text
`[/poll]` |  Display the text inside these tags if a poll is assigned to this publication.
`[not-poll]`
text
`[/not-poll]` |  Display the text inside these tags if no poll was assigned to this publication.
`[profile]`
text
`[/profile]` |  Display a direct link to the publication author profile without using the mini-profile popup.
`[complaint]`
text
`[/complaint]` |  Display the text inside the tags as a link to submit a complaint about the news item.
`{custom}` |  See the section "Displaying News on Pages".
`[comments]`
text
`[/comments]` |  Display the text inside them if this publication has comments on the site.
`[not-comments]`
text
`[/not-comments]` |  Display the text inside them if this publication has no comments on the site
`{image-x}` |  Displays the URLs of images contained in the short story, where x is the number of the image in the news item. For example, `{image-1}` will output the URL of the first image in the short story.
`[image-x]`
text
`[/image-x]` |  Display the text inside them only if the image with number **X** is present in the news item
`[not-image-x]`
text
`[/not-image-x]` |  Display the text inside them only if the image with number X is missing in the news item.
`{fullimage-x}` |  Displays the URL of an image contained in the full story text, where **"x"** this is the image number in the news item
`[fullimage-x]`
text
`[/fullimage-x]` |  Display the text inside them only if the image with number **"x"** is present in the full story.
 
`[news=1,2,3]`
text
`[/news]` |  Display the text inside them if the visitor is viewing the full story of the news items specified in the tag parameterwhere 1,2,3 are news IDs**.
`[not-news=1,2,3]`
text
`[/not-news]` |  Displays the text on any other pages except when viewing the news items specified in the tag.
`[declination=X]`
text
`[/declination]` |  Displays word declensions depending on numbers. In the tag parameters, X is replaced with a number, and "text" is replaced with the word stem and its endings. The endings are listed using the **|** character. This tag is useful together with other tags that output, for example, the number of news views or the number of comments. For example, `[declination={comments-num}]comment||s|s[/declination]`, depending on the number of comments, will output the correct word form.
`{banner_x}` |  Displays a banner added in the admin panel under advertising materials management. X is the banner name.
`[vk]`
text
`[/vk]` |  Display the text inside them if authorization via VK social network is enabled
`{vk_url}` |  Displays the URL for VK social network authorization
`[odnoklassniki]`
text
`[/odnoklassniki]` |  Display the text inside them if authorization via Odnoklassniki social network is enabled
`{odnoklassniki_url}` |  Displays the URL for Odnoklassniki social network authorization
`[facebook]`
text
`[/facebook]` |  Display the text inside them if authorization via Facebook social network is enabled
`{facebook_url}` |  Displays the URL for Facebook social network authorization
`[google]`
text
`[/google]` |  Display the text inside them if authorization via Google social network is enabled
`{google_url}` |  Displays the URL for Google social network authorization
`[mailru]`
text
`[/mailru]` |  Display the text inside them if authorization via Mail.ru social network is enabled
`{mailru_url}` |  Displays the URL for Mail.ru social network authorization
`[yandex]`
text
`[/yandex]` |  Display the text inside them if authorization via Yandex is enabled
`{yandex_url}` |  Displays the URL for Yandex authorization
`[comments-subscribe]`
text
`[/comments-subscribe]` |  Display the text inside them as a link to subscribe to notifications about new comments.
`[next-url]`
text
`[/next-url]` |  Display the text inside them if the next news item exists on the site
`{next-url}` |  Displays the URL of the next publication
`{next-title}` |  Displays the title of the next publication
`[prev-url]`
text
`[/prev-url]` |  Display the text inside them if the previous news item exists on the site
`{prev-url}` |  Displays the URL of the previous publication
`{prev-title}` |  Displays the title of the previous news item
`[if field = "value"]`
text
`[/if]` |  Display the text inside them if the field value equals the specified value. `[if field = "value"]` text `[/if]` \- will display the text if the field equals the parameter "value" `[if field != "value"]`text`[/if]` \- will display the text if the field does not equal the parameter "value" `[if field > "1"]` text `[/if]` \- will display the text if the field is greater than the parameter "value" `[if field >= "2"]` text `[/if]` \- will display the text if the field is greater than or equal to the parameter "value" `[if field < "3"]` text `[/if]` \- will display the text if the field is less than the parameter "value" `[if field <= "4"]` text `[/if]` \- will display the text if the field is less than or equal to the parameter "value" `[if field ~ "value"]` text `[/if]` \- will display the text if the field contains the text "value" `[if field !~ "value"]` text `[/if]` \- will display the text if the field does NOT contain the text "value" Combined usage: `[if field > "3" AND field2 < "5"]` text `[/if]` will display the text if the field field is greater than three and field2 is less than 5 `[if field > "3" OR field2 < "5"]` text `[/if]` will display the text if the field field is greater than three or field2 is less than 5, that is, if any one of the conditions matches Field names that can be used **field** : **id** \- Unique news ID number (number) **autor** \- Username of the news author (text) **date** \- News date (date in English format, for example "2020-09-01" or "10 September 2020" or "next Thursday" or "+1 day" or in unix format; when equality is used, the news date is rounded to the minute) **short_story** \- Short story text (text) **full_story** \- In the short story template, this is the number of characters in the full description. In the full story template, it is the full text itself. **title** \- News title text (text) **descr** \- News description meta tag (text) **keywords** \- "keywords" meta tag (text) **category** \- List of categories it belongs to (array, checked against the array of category IDs the news item belongs to) **alt_name** \- Latin title used to build the page URL when SEF URLs are enabled. (text) **comm_num** \- Number of comments (number) **allow_comm** \- Whether comments are allowed (number, 1 or 0) **allow_main** \- Whether the news item is published on the main page (number, 1 or 0) **approve** \- Whether the news item is published on the site or awaiting moderation (number, 1 or 0) **fixed** \- Whether the news item is pinned (number, 1 or 0) **symbol** \- Symbolic code (text) **tags** \- List of tags from the tag cloud list (array, checked against the array of tag cloud words) **news_read** \- Number of views (number) **allow_rate** \- Whether rating is allowed for the news item (number, 1 or 0) **rating** \- News rating, total sum of all values (number) **vote_num** \- Number of rating votes (number) **votes** \- Whether the news item contains a poll (number, 1 or 0) **view_edit** \- Whether to display the edit reason (number, 1 or 0) **disable_index** \- Whether search engine indexing is disallowed (number, 1 or 0) **editdate** \- News edit date (date in English format, for example "2020-09-01" or "10 September 2020" or "next Thursday" or "+1 day" or in unix format; when equality is used, the date is rounded to the minute) **editor** \- Username of the last publication editor (text) **reason** \- Reason for editing the news item (text) **user_id** \- Publication author ID (number) **xfield_x** \- Value of the publication extra field, where x is the extra field name. For example **xfield_test** value of the extra field test
**List of available tags when full author profile information output is enabled:**
`{profile-link}` |  Displays a link to the publication author profile
`{foto}` |  Displays a link to the publication author avatar
`{fullname}` |  Displays the full name of the publication author
`[fullname]`
text
`[/fullname]` |  Displays the text inside the tags if the full name is specified in the author profile
`[not-fullname]`
text
`[/not-fullname]` |  Displays the text inside the tags if the full name was not specified in the author profile
`{land}` |  Displays the author country
`[land]
`text
`[/land]` |  Displays the text inside the tags if the country is specified in the author profile
`[not-land]`
text
`[/not-land]` |  Displays the text inside the tags if the country was not specified in the author profile
`{signature}` |  Displays the author signature
`[signature]`
text
`[/signature]` |  Displays the text inside the tags if the signature is specified in the author profile
`[not-signature]`
text
`[/not-signature]` |  Displays the text inside the tags if the signature was not specified in the author profile
`{user-info}` |  Displays the publication author bio
`[user-info]`
text
`[/user-info]` |  Displays the text inside the tags if the bio is specified in the author profile
`[not-user-info]`
text
`[/not-user-info]` |  Displays the text inside the tags if the bio was not specified in the author profile
`[online]`
text
`[/online]` |  Displays the text inside the tags if the publication author is online on the site
`[offline]`
text
`[/offline]` |  Displays the text inside the tags if the publication author is offline on the site
`{mail}` |  Displays the user email address
`[pm]`
text
`[/pm]` |  Displays a link with the text "Text" for sending a personal message to the publication author
`{group}` |  Displays the user group
`{registration}` |  Displays the user registration date
`{lastdate}` |  Displays the user last visit date
`{group-icon}` |  Displays the user group icon
`{time_limit}` |  Displays the date until which the user remains in the group if the group is temporary
`[time_limit]`
text
`[/time_limit]` |  Displays the text inside the tags if the user belongs to a temporary group
`{comm-num}` |  Displays the number of user comments
`{comments-url}` |  Displays the URL of the user comments link
`[comm-num]`
text
`[/comm-num]` |  Displays the text inside the tags if the user has comments on the site
`[not-comm-num]`
text
`[/not-comm-num]` |  Displays the text inside the tags if the user has no comments on the site
`{news}` |  Displays the URL of the user news link
`{rss}` |  Displays the URL of the user news RSS feed
`{news-num}` |  Displays the number of user news items
`[news-num]`
text
`[/news-num]` |  Displays the text inside the tags if the user has news items on the site
`[not-news-num]`
text
`[/not-news-num]` |  Displays the text inside the tags if the user has no news items on the site
`{all-pm}` |  Displays the total number of the user personal messages
`{favorite-count}` |  Displays the total number of publications in the user bookmarks
`[profile_xfvalue_X]` |  Displays the value of the extra field named "X" from the user profile
`[profile_xfgiven_X]`
text
`[/profile_xfgiven_X]` |  Displays the text inside the tags if the extra field named "X" is specified in the user profile
`[profile_xfnotgiven_X]`
text
`[/profile_xfnotgiven_X]` |  Displays the text inside the tags if the extra field named "X" is not specified in the user profile
`[author-group=X]`
text
`[/author-group]` |  Displays the text enclosed in these tags if the author of the publication belongs to the specified user group "X". It is allowed to list groups separated by commas, for example: 1,2,3.
`[not-author-group=X]`
text
`[/not-author-group]` |  Displays the text enclosed in these tags if the author of the publication does not belong to the specified user group "X". It is allowed to list groups separated by commas, for example: 1,2,3.
`[allow-comments-subscribe] `
text
`[/allow-comments-subscribe]` |  Display the text inside them if the user is allowed to subscribe to comments. This allows you to style the comment subscription link inside the required block and hide it when subscription is disabled.
`[comments-unsubscribe]`
text
`[/comments-unsubscribe]` |  Display the text inside them as a link to unsubscribe from comments on this publication. This allows users to unsubscribe from one specific news item instead of unsubscribing from all publications.
