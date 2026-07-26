# Script Update

*DLE documentation topic #7*

Starting from version 13.0, DataLife Engine supports two types of updates: manual and automatic. If your website is running a version earlier than 13.0, you must use the manual update method. If your website is running version 13.0 or later, you can use either the automatic or the manual update method.

**Automatic update:**

In your website admin panel, on the main page, click the "Check for updates" button and, if a new version is available, click the script update link, then follow the instructions on your website. You can also go directly to the update section in the admin panel at http://yourwebsite/admin.php?mod=upgrade and follow the instructions there. After the update is completed, make the necessary changes to your templates according to the list of changes published on the website at: <https://dle-news.com/templates-changelog.html>

**Manual update:**

  1. Create a backup copy of the database and all script files on the server.
  2. Replace all files on your server with the files from the `/upload/` folder of the distribution archive (except for templates from the `/templates/` folder). Attention: the files from the distribution archive must be uploaded over the existing files on the server rather than deleting the folders on the server first.
  3. Log in to your website admin panel as an administrator and follow the remaining instructions.
  4. Make the necessary changes to your templates according to the list of changes published on the website at: <https://dle-news.com/templates-changelog.html>
