# File Downloads

*DLE documentation topic #44*

Configuration of the output for files uploaded through the script and available for download. Template file: **attachment.tpl.** The following tags may be used:

`[allow-download]`
text
`[/allow-download]` |  Output the enclosed text if downloading uploaded files is allowed for the website user
---|---
`[not-allow-download]`
text
`[/not-allow-download]` |  Output the enclosed text if downloading uploaded files is forbidden for the website user.
`[count]`
text
`[/count]` |  Output the enclosed text if support for counting file downloads from the server is enabled in the script settings
`{id}` |  Outputs the unique ID number of the uploaded file, information about which is stored in the database
`{name}` |  Outputs the name of the uploaded file or the text specified as the file name in the `[attachment=...]` tag in the news text
`{extension}` |  Outputs the extension of the file uploaded to the news item
`{link}` |  Outputs the URL for downloading the uploaded file
`{size}` |  Outputs the size of the uploaded file
`{md5}` |  Outputs the MD5 checksum of the uploaded file
`{date}` |  Outputs the date the file was uploaded to the server in the date format specified in the script settings
`{date=date format}` |  Outputs the date in the format specified in the tag. The date format is defined according to the format used in PHP. For example, the tag {date=d} outputs the day of the month the file was uploaded, the tag {date=F} outputs the month name, and the tag {date=d-m-Y H:i} outputs the full date and time
`{count}` |  Outputs the number of times the file has been downloaded from the server
`{online-view-link}` |  Outputs the URL link for viewing the document online in the browser
`[allow-online]`
text
`[/allow-online]` |  Output the enclosed text if the uploaded document has a format supported for online viewing
