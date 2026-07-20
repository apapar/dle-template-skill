# Tags Used When Writing News

*DLE documentation topic #10*

When writing publications, in addition to HTML code and visual formatting in the editor, the following additional special tags may be used:

`[img]https://website.com/image.jpg[/img]` Inserts an image into a news item

`[img=alignment]https://website.com/image.jpg[/img]` Inserts an image into a news item and aligns it according to the specified parameter

`[img=alignment|custom alt text]https://website.com/image.jpg[/img]` Inserts an image into a news item, aligns it according to the specified parameter, and assigns a custom description to the image

`[thumb]https://website.com/image.jpg[/thumb]` Inserts a thumbnail of the image into a news item with a link to the full-size image

`[thumb=alignment]https://website.com/image.jpg[/thumb]` Inserts a thumbnail of the image into a news item with a link to the full-size image and aligns it according to the specified parameter

`[thumb=alignment|custom alt text]https://website.com/image.jpg[/thumb]` Inserts a thumbnail of the image into a news item with a link to the full-size image, aligns it according to the specified parameter, and assigns a custom description to the image

`[video=https://website.com/video.mp4]` Allows video playback to be embedded in a news item

`[video=300x250,https://website.com/video.mp4]` This tag allows you to set the video size for this specific tag

`[video=https://website.com/video.mp4|https://website.com/sample.jpg]` Allows video playback to be embedded in a news item and also sets a preview image before playback begins.

`[video=https://website.com/video.mp4|https://website.com/sample.jpg|Video description]` Allows video playback to be embedded in a news item, sets a preview image before playback begins, and defines a separate description for the video that will be shown in the player.

`[video=https://website.com/video.mp4,https://website.com/video2.mp4]` Allows two video files to be embedded in a news item; a playlist of the two video files will be created. A preview image and description can also be assigned to them as described above.

`[audio=https://website.com/music.mp3]` Allows MP3 playback to be embedded in a news item

`[audio=https://website.com/music1.mp3,https://website.com/music2.mp3]` Allows a playlist of several MP3 files to be embedded in a news item``

`[media=link to a page with a video]` is intended for publishing video and other content on the website from services that support oEmbed, such as youtube.com, instagram, twitter, facebook, flickr, vimeo, docs.com, vine, gettyimages, codepen.io, dailymotion, mixcloud, soundcloud, coub, ifixit, and Apple Keynote. In this tag, you simply specify the URL of the page where the video or required content is located, and the script automatically recognizes the storage type and inserts the required HTML code to display the video or widget.

`[media=300x250,http://....]` This tag allows you to set the dimensions of the video for this specific tag
