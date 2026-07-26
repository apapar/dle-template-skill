# Running Functions via Cron

*DLE documentation topic #75*

DataLife Engine supports running certain functions on a schedule. You can automatically create a database backup, optimize the database, and create a sitemap for search engines. This requires support from your hosting provider for scheduled task execution (CRON). The `cron.php` file located in the root of your website is intended for running functions via cron. By default, for security reasons, the ability to run this file is disabled, so let us look at how this function can be enabled.

First of all, for security reasons, we strongly recommend changing the name of the `cron.php` file to any other name with the .php extension.

Next, open this file in a text editor and at the very beginning find the following line:
`$allow_cron = 0;`

Change it to:
`$allow_cron = 1;`

This allows the file to perform functions automatically.

You can then change the number of database backup files that will be stored on the server. To do this, find the following line a little lower:
`$max_count_files = 5;`

where 5 is the number of database copies. You can set your own number of files. When this limit is exceeded, older database backups will be deleted automatically.

After you have made the necessary changes, save this file on the server. Now you need to add this file to the scheduled CRON execution list. You set the execution time and frequency yourself. You can get detailed instructions on how to add this file to CRON from your hosting provider.

**The cron file can perform the following operations:**

1\. Creating a database backup. To run this mode,

simply run the cron.php file without passing any parameters to it

2\. Creating a website sitemap. To run this mode,

run the file with the parameter `cron.php?cronmode=sitemap`

if console execution of the script is used, use `/usr/bin/php -f /your/path/cron.php sitemap`

When the sitemap is created by cron, search engines will also be automatically notified about the presence of the sitemap.

3\. Database optimization. To run this mode,

run the file with the parameter `cron.php?cronmode=optimize`

if console execution of the script is used, use `/usr/bin/php -f /your/path/cron.php optimize`

4\. Antivirus launch. To run this mode,

run the file with the parameter `cron.php?cronmode=antivirus`

if console execution of the script is used, use `/usr/bin/php -f /your/path/cron.php antivirus`

At the same time, of course, do not forget to specify the correct paths both to the PHP interpreter and to the script itself from the root of your server.
