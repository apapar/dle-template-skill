# API for Module Development

*DLE documentation topic #74*

The API is intended for writing modifications compatible with both old and future versions of the script. If you use the API to retrieve data from the database, you can be sure that this code will also work in future script versions, which makes code verification and adaptation easier when a new version is released. Also, when using the API, there is no need to write your own data selection functions or to connect and declare the classes required for database work. It is enough simply to connect the API file and start using its functions; it handles the rest for you.

To use the API in your module, you must include it with the following line:
`include ('engine/api/api.class.php');`

At the same time, you do not need to think about whether there is a database connection or whether the required classes are connected. You can use this code both inside DLE script files and in other scripts unrelated to DLE. This makes it possible to organize standardized integrations of the DLE script with other scripts, for example forums.

List of API functions:
`$dle_api->take_user_by_id( int $id [, string $select_list] );`

Retrieves an array with user information by ID. The optional `$select_list` parameter specifies the list of database fields to retrieve or * for all. Returns an array with user information or false if the user is not found.
`$dle_api->take_user_by_name( string $name [, string $select_list]);`

Retrieves an array with user information by login. The optional `$select_list` parameter specifies the list of database fields to retrieve or * for all. Returns an array with information or false if the user is not found.
`$dle_api->take_user_by_email( string $email [, string $select_list]);`

Retrieves an array with user information by E-Mail. The optional `$select_list` parameter specifies the list of database fields to retrieve or * for all. Returns an array with information or false if the user is not found.
`$dle_api->take_users_by_group( int $group_id [, string $select_list [, int $limit]]);`

Retrieves an array with information about users by group number. The optional `$select_list` parameter specifies the list of database fields to retrieve. The optional `$limit` parameter specifies the limit on the number of returned users. Returns an array with information or false if users are not found.
`$dle_api->take_users_by_ip( string $ip, [, bool $like [, string $select_list [, int $limit]]]);`

Retrieves a list of users by IP. The second parameter `$like` specifies whether exact matching or partial matching should be used. The optional `$select_list` parameter specifies the list of database fields to retrieve. The optional `$limit` parameter specifies the limit on the number of returned users. Returns an array with information or false if users are not found.
`$dle_api->change_user_name( int $user_id, string $new_name);`

Changes the user login. `user_id` is the ID of the user whose login must be changed. `new_name` is the new user login. Return values: true if successful, false if the new name is already occupied by another user.
`$dle_api->change_user_pass( int $user_id, string $new_pass);`

Changes the user password. `user_id` is the ID of the user whose password must be changed. `new_pass` is the new user password.
`$dle_api->change_user_email( int $user_id, string $new_email);`

Changes the user's E-Mail. `user_id` is the ID of the user whose E-Mail must be changed. `new_email` is the new E-Mail. Return values: 1 - successfully completed, -1 - the new E-Mail already exists, -2 - invalid E-mail.
`$dle_api->change_user_group( int $user_id, int $new_group);`

Changes the user's group. `user_id` is the ID of the user whose group must be changed. `new_group` is the ID of the new user group. Return values: true if successful, false if a non-existent group ID is specified.
`$dle_api->external_auth( string $login, string $password);`

Authorization by login and password. Return values: true - authorization successful, false - login or password is incorrect.
`$dle_api->external_register( string $login, string $password, string $email, int $group);`

Registers a user in the database. The function receives: Login, Password, E-mail, and the group number in which the user should be registered. Return values: 1 - successfully completed, -1 - the new login already exists, -2 - the new E-Mail already exists, -3 - invalid E-Mail, -4 - a non-existent group was specified.
`$dle_api->send_pm_to_user ( int $user_id, string $subject, string $text, string $from);`

Sends a personal message to a user. `$user_id` recipient ID. `$subject` message subject. `$text` message text. `$from` sender login. Return values: 1 - successfully completed, -1 - recipient not found, 0 - database error.
`$dle_api->load_table ( string $table [, string $fields [, string $where [, bool $multirow [, int $start [, int $limit [, string $sort [, string $sort_order]]]]]]]);`

Retrieves information from a database table.

`$table` \- table name

`$fields` \- required fields comma-separated or * for all

`$where` \- selection condition

`$multirow` \- whether to retrieve one row or multiple

`$start` \- starting selection value

`$limit` \- number of records to retrieve, 0 - retrieve all

`$sort` \- field used for sorting

`$sort_order` \- sort direction

Returns an array with data or false if nothing is found in the database for the specified parameters.
`$dle_api->save_to_cache ( string $fname, mixed $vars);`

Writes data to a cache file. The `$fname` parameter specifies the cache file name without its extension. `$vars` \- data to write to the cache.
`$dle_api->load_from_cache ( string $fname,  [, int $timeout [, string $type]]);`

Reads data from a cache file. The `$fname` parameter specifies the cache file name without its extension. The optional `$timeout` parameter specifies the number of seconds during which the cache data is considered valid. If the cache file is outdated, the function returns false. The optional `$type` parameter specifies the type of data stored in the cache; if it is not 'text', it is assumed that an array was stored and an array of data is returned.
`$dle_api->clean_cache (  [string $name] );`

Deletes cache. The optional `$name` parameter specifies the exact file name without extension that needs to be deleted.
`$dle_api->get_cached_files();`

Retrieves an array containing the names of cache files.
`$dle_api->edit_config ( mixed $key,  [, string $new_value]);`

Changes and saves script settings.

The `$key` parameter is a string or an array. If it is a string, it is the parameter name; if it is an array, it is an associative array of parameters.

The `$new_value` parameter is the value of the parameter. It is not used if `$key` is an array.
`$dle_api->take_news ( string $cat,  [, string $fields [, int $start [, int $limit [, string $sort [, string $sort_order]]]]]);`

Retrieves news items.

`$cat` \- news categories, comma-separated

`$fields` \- list of retrieved news fields or * for all

`$start` \- starting selection value

`$limit` \- number of news items to retrieve, 0 - retrieve all news items

`$sort `\- field used for sorting

`$sort_order` \- sort direction

Returns an associative two-dimensional array with news items.
`$dle_api->checkGroup ( int $group );`

Checks whether the specified group exists or not. Return values: true if the group exists, false if the group does not exist.
`$dle_api->install_admin_module ( string $name, string $title, string $descr, string $icon [, string $perm] );`

Installs a third-party module in the script admin panel.

`$name` \- module name, namely the name of the .php file located in the engine/inc/ folder, but without the file extension

`$title` \- module title

`$descr` \- module description

`$icon` \- icon name for the module, without the path.

`$perm` \- information about the groups allowed to see this module. This field can take the following values: all or comma-separated group IDs. For example: 1,2,3. If the value all is specified, the module will be shown to all users who have access to the admin panel
`$dle_api->uninstall_admin_module ( string $name );`

Removes a third-party module from the script admin panel.

`$name` \- name of the module being removed
`$dle_api->change_admin_module_perms ( string $name, string $perm );`

Changes the user groups that are allowed to see the third-party module in the script admin panel.

`$name` \- module name

`$perm` \- information about the groups allowed to see this module. This field can take the following values: all or comma-separated group IDs. For example: 1,2,3. If the value all is specified, the module will be shown to all users who have access to the admin panel.
