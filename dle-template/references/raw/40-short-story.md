# Short Story

*DLE documentation topic #40*

Short story output is configured in the file **shortstory.tpl** and supports the following tags:

`{title}` |  Displays the article title
---|---
`{title limit="x"}` |  Displays the news title truncated to X characters.
`{news-id}` |  The news ID number, under which this item is stored in the database
`{short-story}` |  Displays the short story
`{short-story limit="x"}` |  Displays only the short story text without HTML formatting, while truncating the publication text to the specified X number of characters.
`{author}` |  Article author
`{date}` |  Publication date. The date output format is configured in the system settings.
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
`{rating}` |  Displays the news rating
`[rating]`
text
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
`{comments-num}` |  Displays the number of comments posted to the article
`{category}` |  The category the article belongs to
`{category-icon}` |  A link to the category icon. Note that it outputs only the image path itself; you must handle the actual output yourself, for example <img src="{category-icon}" />
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
`{link-category}` |  Link to all categories the news item belongs to
`[full-link]`
text
`[/full-link]` |  Link to the full version, for example [full-link]Read more...[/full-link]
`[com-link]`
text
`[/com-link]` |  Link to the article comments, displayed only if they are allowed
`[xfvalue_x]` |  Value of the extra field "x", where "x" is the extra field name
`[xfvalue_X limit="X2"]` |  Displays only the extra field text without HTML formatting, while truncating the text to the specified X2 number of characters. The text is truncated to the last logical word. For example [xfvalue_test limit="50"] will display only the first 50 characters of the extra field value named test
`[xfgiven_x]`
text
`[/xfgiven_x]` |  Displays the text inside the tags if the extra field "x" is not empty. If the field has no value, the text is simply removed.
`[xfnotgiven_X]`
text
`[/xfnotgiven_X]` |  Display the text inside them if the extra field was not set when publishing the news item, where "x" is the extra field name
`[ifxfset fields="X"]`
text
`[/ifxfset]` |  Display the text inside them if a field named X is set and filled for the news item. You may list multiple field names separated by commas. For example, [ifxfset fields="test1,test2"]both fields named test1 and test2 are filled[/ifxfset] will display the text if both fields were filled in the news item. The main difference from the existing [xfgiven_x] and [xfnotgiven_x] tags is that you can list multiple fields at once and the filling of all listed fields is checked simultaneously. Actual field filling is checked, so values such as "0" or "no" are also treated as filled fields.
`[ifxfnotset fields="X"]`
text
`[/ifxfnotset]` |  Display the text inside them if a field named X was not set and filled for the news item. You may also list multiple field names separated by commas. For example, [ifxfnotset fields="test1,test2"]both fields named test1 and test2 were not filled[/ifxfnotset] will display the text if both fields were not filled in the news item. The main difference from the existing [xfgiven_x] and [xfnotgiven_x] tags is that you can list multiple fields at once and the filling of all listed fields is checked simultaneously. Actual field filling is checked, so values such as "0" or "no" are also treated as filled fields.
`[ifxfvalue tagname="tagvalue"]`
Text
`[/ifxfvalue]` |  Display the text inside them if the extra field value matches the specified value. Where **tagname** this is the extra field name, and **tagvalue** this is its value. Values **tagvalue** can be listed separated by commas.
`[ifxfvalue tagname!="tagvalue"]`
Text
`[/ifxfvalue]` |  Display the text inside them if the field value does not match the specified value. Where **tagname** this is the extra field name, and **tagvalue** this is its value. Values **tagvalue** can be listed separated by commas.
`[xfvalue_thumb_url_X]` |  This tag can be used only if the extra field has the "Image" type. The tag outputs only the URL of the thumbnail image, where "x" is the extra field name
`[xfvalue_image_url_X]` |  This tag can be used only if the extra field has the "Image" type. The tag outputs only the URL of the full-size uploaded image, where "x" is the extra field name
`[xfvalue_image_description_X]` |  This tag can be used only if the extra field has the "Image" type. The tag outputs only the description of the uploaded image, where "x" is the extra field name.
`[xfvalue_X image="Nr"]` |  Displays images uploaded to the "Gallery" type extra field individually. Where "X" is the extra field name and "Nr" is the gallery image number. For example, when using [xfvalue_test image="2"] the second image uploaded to the extra field named "test" will be displayed.
`[xfvalue_X image-url="Nr"]` |  Displays the URLs of full-size images uploaded to the "Gallery" type extra field individually. Where "X" is the extra field name and "Nr" is the gallery image number.
`[xfvalue_X image-thumb-url="Nr"]` |  Displays the URLs of thumbnails uploaded to the "Gallery" type extra field individually. Where "X" is the extra field name and "Nr" is the gallery image number.
`[xfvalue_X image-description="Nr"]` |  Displays the descriptions of images uploaded to the "Gallery" type extra field individually. Where "X" is the extra field name and "Nr" is the gallery image number.
`[xfgiven_X image="NR"]`
text
`[/xfgiven_X image="NR"]` |  Display the text inside them if an image with the specified number exists and is uploaded in the extra field, where X is the extra field name and NR is the image number
`[xfnotgiven_X image="NR"]`
Text
`[/xfnotgiven_X image="NR"]` |  Display the text inside them if an image with the specified number is missing in the extra field, where X is the extra field name and NR is the image number
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
`[xfvalue_X format="Format"]` |  Used to display extra fields of the "Date and time" type, where X is the extra field name and "Format" is the output format for the date and time specified in the field. You can display this extra field in different date and time formats, not only the default field format. For example, the tag [xfvalue_test format="j F Y H:i"] will display the date and time from the field in the j F Y H:i format.
`[ifprofilexfset fields="X"]`
text
`[/ifprofilexfset]` |  Display the text inside them if an extra field named X is set and filled in the publication author profile. You may list several field names separated by commas. For example [ifprofilexfset fields="test1,test2"] both fields named test1 and test2 are filled [/ifprofilexfset] will display the text if both fields were filled.
`[ifprofilexfnotset fields="X"]`
text
`[/ifprofilexfnotset]` |  Display the text inside them if a field named X was not set and filled. You may also list several field names separated by commas. For example, [ifprofilexfnotset fields="test1,test2"]both fields named test1 and test2 were not filled[/ifprofilexfnotset] will display the text if both fields were not filled.
`[group=X]`
text
`[/group]` |  Displays text for a specific user group. X is a comma-separated list of user group IDs.
`[category=X]`
text
`[/category]` |  Used to display text if the user is in **X** category. Where **X** this is **ID** your category. Categories may be listed separated by commas
`[has-category]`
text
`[/has-category]` |  Displays the text enclosed in these tags if the publication belongs to any category.
`[not-has-category]`
text
`[/not-has-category]` |  Displays the text enclosed in these tags if the publication has no categories.
`[category-icon]`
text
`[/category-icon]` |  Displays the text enclosed in these tags if an icon has been specified in the category settings for the category to which the publication belongs.
`[not-category-icon]`
text
`[/not-category-icon]` |  Displays the text if no icon has been specified for the category to which the publication belongs.
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
`{date=date format}` |  Displays the date in the format specified in the tag. This allows you to output not only the whole date, but also its individual parts. The date format is set according to the format used in PHP. For example, the tag **{date=d}** will display the day of the month of the news publication or comment, and the tag **{date=F}** will display the month name, and the tag **{date=d-m-Y H:i}** will display the full date and time
`{approve}` |  Displayed only when a user views their own profile and shows the status of their news awaiting moderation.
`[fixed]`
text
`[/fixed]` |  Displays the text inside the tags if this news item is pinned
`[not-fixed]`
text
`[/not-fixed]` |  Displays the text inside the tags if this news item was not pinned
`[day-news]`
text
`[/day-news]` |  Displays a link to all news items published on the same day as this news item. This tag can be used together with the {date} tag.
`[catlist=1,2....]`
text
`[/catlist]` |  Displays the text inside the tag if the news item belongs to the specified categories
`[not-catlist=1,2....]`
text
`[/not-catlist]` |  Displays the text inside the tag if the news item does not belong to the specified categories.
`{login}` |  Displays the username of the user who added the news item as plain text without profile or usercard links.
`[poll]`
text
`[/poll]` |  Display the text inside these tags if a poll is assigned to this publication.
{poll} |  Displays the poll added to the news item.
`[not-poll]`
text
`[/not-poll]` |  Display the text inside these tags if no poll was assigned to this publication.
`[profile]`
text
`[/profile]` |  Display a direct link to the publication author profile without using the mini-profile popup.
`[complaint]`
text
`[/complaint]` |  Display the text inside the tags as a link to submit a complaint about the news item.
`{category-url}` |  Displays the full URL of the category this news item belongs to. This tag outputs only the raw URL without formatting or a ready-made link.
`[comments]`
text
`[/comments]` |  Display the text inside them if this publication has comments on the site.
`[not-comments]`
text
`[/not-comments]` |  Display the text inside them if this publication has no comments on the site.
`{image-x}` |  Displays the URLs of images contained in the short story, where x is the image number in the news item. For example, {image-1} will display the URL of the first image in the short story.
`[image-x]`
text
`[/image-x]` |  Display the text inside them only if the image with number **X** is present in the news item
`[not-image-x]`
text
`[/not-image-x]` |  Display the text inside them only if the image with number X is missing in the news item.
`[tags=tag1,tag2,tag3]`
text
`[/tags]` |  Display the text inside them if the visitor is viewing pages with the listed tag cloud keywords, where tag1, tag2, tag3 are tag cloud keywords.
`[not-tags=tag1,tag2,tag3]`
text
`[/not-tags]` |  Displays the text on any other pages except those specified in the tag.
`[declination=X]`
text
`[/declination]` |  Outputs word declensions depending on numbers. The tag parameter X receives a number, while "text" receives the word stem with endings. The endings are listed using the "|" character. This tag is useful together with other tags that output, for example, the number of news views or comments. For example, [declination={comments-num}]comment|s||s[/declination] will output "comment" or "comments" depending on the number of comments.
`[newscount=x]`
text
`[/newscount]` |  Displays the text inside the tags when the X-th news item is shown, where X is the ordinal number of the news item displayed on the page. For example, [newscount=1] text [/newscount] will display the text when the first news item on the page is shown.
`[not-newscount=X]`
text
`[/not-newscount]` |  Displays the text enclosed in these tags when showing any news items by position except the specified X news items. This tag is useful if you want to display certain layout elements in all news items when showing short stories, except for those mentioned above. For example, to hide something in the first news item in the list.
`{banner_x}` |  Displays a banner added in the admin panel under advertising materials management. X is the banner name.
`[if field = "value"]`
text
`[/if]` |  Display the text inside them if the field value equals the specified value. `[if field = "value"] text [/if]` \- will display the text if the field equals the parameter "value" `[if field != "value"]text[/if]` \- will display the text if the field does not equal the parameter "value" `[if field > "1"] text [/if]` \- will display the text if the field is greater than the parameter "value" `[if field >= "2"] text [/if]` \- will display the text if the field is greater than or equal to the parameter "value" `[if field < "3"] text [/if]` \- will display the text if the field is less than the parameter "value" `[if field <= "4"] text [/if]` \- will display the text if the field is less than or equal to the parameter "value" `[if field ~ "value"] text [/if]` \- will display the text if the field contains the text "value" `[if field !~ "value"] text [/if]` \- will display the text if the field does NOT contain the text "value" Combined usage: `[if field > "3" AND field2 < "5"] text [/if]` will display the text if the field field is greater than three and field2 is less than 5 `[if field > "3" OR field2 < "5"] text [/if]` will display the text if the field field is greater than three or field2 is less than 5, that is, if any one of the conditions matches Field names that can be used **field** : **id** \- Unique news ID number (number) **autor** \- Username of the news author (text) **date** \- News date (date in English format, for example "2020-09-01" or "10 September 2020" or "next Thursday" or "+1 day" or in unix format; when equality is used, the news date is rounded to the minute) **short_story** \- Short story text (text) **full_story** \- In the short story template, this is the number of characters in the full description. In the full story template, it is the full text itself. **title** \- News title text (text) **descr** \- News description meta tag (text) **keywords** \- "keywords" meta tag (text) **category** \- List of categories it belongs to (array, checked against the array of category IDs the news item belongs to) **alt_name** \- Latin title used to build the page URL when SEF URLs are enabled. (text) **comm_num** \- Number of comments (number) **allow_comm** \- Whether comments are allowed (number, 1 or 0) **allow_main** \- Whether the news item is published on the main page (number, 1 or 0) **approve** \- Whether the news item is published on the site or awaiting moderation (number, 1 or 0) **fixed** \- Whether the news item is pinned (number, 1 or 0) **symbol** \- Symbolic code (text) **tags** \- List of tags from the tag cloud list (array, checked against the array of tag cloud words) **news_read** \- Number of views (number) **allow_rate** \- Whether rating is allowed for the news item (number, 1 or 0) **rating** \- News rating, total sum of all values (number) **vote_num** \- Number of rating votes (number) **votes** \- Whether the news item contains a poll (number, 1 or 0) **view_edit** \- Whether to display the edit reason (number, 1 or 0) **disable_index** \- Whether search engine indexing is disallowed (number, 1 or 0) **editdate** \- News edit date (date in English format, for example "2020-09-01" or "10 September 2020" or "next Thursday" or "+1 day" or in unix format; when equality is used, the date is rounded to the minute) **editor** \- Username of the last publication editor (text) **reason** \- Reason for editing the news item (text) **user_id** \- Publication author ID (number) **xfield_x** \- Value of the publication extra field, where x is the extra field name. For example **xfield_test** value of the extra field test
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
`[land]`
text
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
`[/author-group]` |  Displays the text inside the tags if the publication author belongs to the specified user group "X". Groups may be listed separated by commas, for example: 1,2,3
`[not-author-group=X]`
text
`[/not-author-group]` |  Displays the text inside the tags if the publication author does not belong to the specified user group "X". Groups may be listed separated by commas, for example: 1,2,3
