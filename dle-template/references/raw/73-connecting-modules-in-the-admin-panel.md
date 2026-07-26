# Connecting Modules in the Admin Panel

*DLE documentation topic #73*

DataLife Engine provides convenient mechanisms for connecting script modifications developed by you in the admin panel. These mechanisms make it possible to connect admin panel modules without making changes to the script files and allow them to remain operational after the script is updated to a new version.

To connect your third-party module in the admin panel, you must place your module file in the **``**`/engine/inc/` folder. This is a mandatory requirement. Only files located in this folder can be connected. For example, if your module file is named `mymod.php` and you placed it in the `/engine/inc/` folder, then you can call and access your module from the admin panel at: `https://website.com/admin.php?mod=mymod`, where **mymod** is the name of your module without the **.php** extension. The connection happens automatically; no script file changes are required.

To prevent users from having to type the address of your module manually in the browser and to have it appear in the list of all sections in the administrative panel, a special table in the MySQL database is provided for this purpose. The table name is: `PREFIX_admin_sections`. The PREFIX can be read by your installation script from the file `/engine/data/dbconfig.php`. This table contains the following field names:

`name` \- contains the name of your module, namely the name of the .php file located in the `/engine/inc/` folder, but without the file extension. For example, if your file is named mymod.php, then the value mymod must be written to this field.

`title` \- contains the title of your module.

`descr` \- contains the description of your module.

`icon` \- contains the icon name for your module with the path specified. Recommended icon size is 70 by 70 pixels.

`allow_groups` \- contains information about the groups that are allowed to see this module. This field can take the following values: **all** or comma-separated **ID** group values. For example: 1,2,3. If the value **all** is specified, the module will be shown to all users who have access to the admin panel.

Example of a query for writing information about the **mymod** module:
`INSERT INTO `prefix_admin_sections` (`name`, `title`, `descr`, `icon`, `allow_groups`) VALUES ('mymod', 'Test module', 'Test module description goes here', 'mymod.png', '1');`

After executing this query, the module will be registered in the admin panel only for administrators.

**Attention:** specifying groups in the database does not prohibit or prevent the module from being run by users from other groups. This field only determines whether the section is shown in the admin panel navigation and section lists. For access control, your included modules must perform their own group checks and allow execution only for the permitted groups.
