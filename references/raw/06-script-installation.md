# Script Installation

*DLE documentation topic #6*

### Installing the script on the server

The script is installed on the server automatically and should not cause any particular difficulties, but you need to complete several steps related to folder permissions.

  1. First, copy all files from the `/upload/` folder in the distribution archive to your server. We recommend using FTP managers specifically to upload the script files to the server.
  2. Set write permissions (CHMOD 777) for the folders `/backup/`, `/templates/`, `/uploads/`, `/engine/data/`, `/engine/cache/`.
  3. Enter your website address in the browser URL bar, for example `https://website.com/` and follow its instructions.

The automatic installer will check all required files and configure the database connection. After the installation is complete, you will be able to view the script in action on the demo page `https://website.com/` To access the admin panel, open `https://website.com/admin.php`

**Attention:** a clean installation of the script removes data from a previously installed DLE script. To update an existing installation, read the update instructions. After installing or updating the script on the server, be sure to delete the **install.php** file; otherwise, it will be possible to initiate the installation process again and destroy the existing data structure.
