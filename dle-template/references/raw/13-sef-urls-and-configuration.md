# SEF URLs and Configuration

*DLE documentation topic #13*

**DataLife Engine** uses SEF URLs (search-engine-friendly URLs) to display news, which allows the article subject or any other text to be included in the browser URL. Thanks to this, website indexing in search engines becomes more effective, which brings more visitors to your website from search engines. For SEF URLs to work, the mod_rewrite module must be installed on your server if Apache is used as the main server for PHP. If your server does not support this, you can disable this feature in the script settings.

**For Apache:**

If you use Apache as the PHP server, the .htaccess file must be present in the root of your website with the following content (it is included with the DLE distribution):

DirectoryIndex index.php
`DirectoryIndex index.php

    <IfModule mod_rewrite.c>
    	RewriteEngine On

    	RewriteCond %{REQUEST_FILENAME} !-f
    	RewriteRule \.(php|jpg|jpeg|gif|ico|png|svg|webp|avif|js|css|mp3|ogg|mp4|mkv|avi|zip|rar|woff|woff2)(\?|$) - [L,NC,R=404]

    	RewriteRule ^sitemap.xml$ uploads/sitemap.xml [L]
    	RewriteRule ^google_news.xml$ uploads/google_news.xml [L]
    	RewriteRule ^static_pages.xml$ uploads/static_pages.xml [L]
    	RewriteRule ^category_pages.xml$ uploads/category_pages.xml [L]
    	RewriteRule ^tags_pages.xml$ uploads/tags_pages.xml [L]
    	RewriteRule ^news_pages(\d*?).xml$ uploads/news_pages$1.xml [L]

    	RewriteCond %{REQUEST_FILENAME} !-f
    	RewriteCond %{REQUEST_FILENAME} !-d
    	RewriteRule . index.php [L]
    </IfModule>`

**For Nginx:**

If you use Nginx as the PHP server, the following lines must be present in the location section of your domain configuration:
`location / {

       location ~ ^/backup/ {
           deny all;
           return 403;
       }

       location ~ ^/engine/ {
           deny all;
           return 403;
       }

       location ~ ^/public/.*\.ph(p\d*|tml)$ {
           deny all;
           return 403;
       }

       location ~ ^/language/ {
           deny all;
           return 403;
       }

       location ~ ^/templates/.*\.(ph(p\d*|tml)|tpl)$ {
          deny all;
          return 403;
       }

       location ~ ^/uploads/.*\.ph(p\d*|tml)$ {
           deny all;
           return 403;
       }

       location ~ ^/uploads/files/.*\.(avi|divx|mp3|ogg|flac|aac|mp4|wmv|m4v|m4a|mov|mkv|webm|m3u8)$ {
           allow all;
       }

       location ~ ^/uploads/files/ {
           deny all;
           return 403;
       }

       rewrite "^/sitemap.xml$" /uploads/sitemap.xml last;
       rewrite "^/google_news.xml$" /uploads/google_news.xml last;
       rewrite "^/static_pages.xml$" /uploads/static_pages.xml last;
       rewrite "^/category_pages.xml$" /uploads/category_pages.xml last;
       rewrite "^/tags_pages.xml$" /uploads/tags_pages.xml last;
       rewrite "^/news_pages(\d*?).xml$" /uploads/news_pages$1.xml last;

    # the rest of your domain configuration code

       try_files $uri $uri/ /index.php?$args;
    }`

Replace the dots with your additional parameters for the operation of your domain, PHP handlers, and other settings. For Nginx configuration, we recommend contacting your system administrator or your hosting provider's support service.

**Customizing link appearance and rules:**

You can modify and configure the appearance of SEF URLs in the corresponding section of the control panel. However, we do not recommend changing the link format for inexperienced users. For them, we recommend choosing one of the three predefined formats in the script settings.

If you decide to change the link format yourself or add your own rules, you must follow several rules. By default, the search pattern uses syntax in which, for example, `{foo}` indicates a match to which the name foo is assigned, while the search itself matches the regular expression `[^/]+`. In other words, it searches for any set of characters up to the first slash. To configure the pattern that the desired expression should match, you can specify a custom pattern by writing, for example, `{bar:[0-9]+}`. A few examples:

`/user/{id:\d+}/` matches /user/42, but does not match /user/xyz

`/user/{name}/` matches /user/foobar/, but does not match /user/foo/bar

`/user/{name:.+}/` matches /user/foo/bar as a whole exactly as it is.

The values from the search pattern are assigned to the specified names. In these examples, the values you find can be passed to the real link using the `{id}` and `{name}` tags. Accordingly, the script will receive the values `$_GET['id']` and `$_GET['name']`.

Custom parameters for the SEF URL search pattern cannot use capturing groups because they are already groups themselves. For example, `{lang:(en|de)}` cannot be used because () is a search group. Instead, you need to use the search pattern `{lang:en|de}` or `{lang:(?:en|de)}`.

Attention: if you change the standard DLE rules, only the variables that DLE works with and understands must be passed to the real SEF URL. For example, to display full news, DLE understands the link /index.php?newsid=123 where the newsid variable receives a numeric value, so no matter how you change the SEF URL pattern, you must still pass the newsid variable with a numeric value to the real link.
