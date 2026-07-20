# General Features

*DLE documentation topic #3*

### 1\. Architecture and System Capabilities

The system core is specifically designed to withstand enormous loads while consuming minimal server resources, and this receives the highest priority during development. It is also perfectly suited for SEO promotion right out of the box and requires no additional plugins or modifications.

  * **Ultra-low load (0-5 database queries):** An optimized core and advanced architecture let the website fly even on affordable hosting.
  * **Support for PHP 8.0 and higher:** Full compatibility with the latest and fastest PHP interpreter versions, including all current branches.
  * **Scalable caching:** Native support for Memcached, Redis, and file caching for instant page delivery.
  * **Isolated security:** The system core is protected from direct web server access, and static resources are moved to separate folders. Powerful cryptographically secure algorithms for password encryption and other critical information are integrated.
  * **Independent SEF URL system:** Full processing of human-readable URL rules inside the engine with no dependency on server software. Works with both Apache and ideally with Nginx + PHP-FPM.
  * **Brotli and Gzip compression:** Automatic on-the-fly content compression for maximum loading speed and bandwidth savings.
  * **Total SEO optimization:** Proper handling of redirects and non-existent pages, automatic meta tag generation, support for tag clouds, and cross-links.
  * **Schema.org microdata:** Automatic generation of structured data in JSON-LD format for flawless snippets in Google and Yandex.
  * **IndexNow and Sitemap:** Instant notification of search engines (Yandex, Bing, and many others) about publication changes. Also includes an autonomous multi-file sitemap, including Google News and image support.
  * **Cloud storage and WebDAV:** Seamless integration with any S3-compatible storage (Yandex Cloud, Amazon, Cloudflare, Selectel, or personal storage). Support for any servers using the WebDAV protocol is included.
  * **Unique plugin system:** Secure on-the-fly modification of the engine code without changing the original files, so updates remain painless. Plugin management is handled in the control panel: in the admin panel, you simply specify what should be replaced with what and what code should be applied. DLE then creates an automatic virtual environment where your code is executed, and it can be easily changed or rolled back while the original files always remain untouched.
  * **Unique template engine:** Creating DataLife Engine templates requires no specific programming-language knowledge, only HTML markup and the special helper DLE tags described in the documentation, which you simply place wherever you need them. Remarkably simple.
  * **Deep AJAX integration:** High interface responsiveness, smooth navigation, and significant server resource savings.
  * **VPN/Proxy protection:** Intelligent detection and blocking of attempts to bypass geo-blocking and spam filters.

### 2\. Control Panel

The modern DLE admin center is your personal command post, adapting to your needs, time of day, and screen size.

  * **Template manager:** Create, edit (with code highlighting), delete, and move theme files directly in the browser.
  * **Additional publication fields:** You can create many different extra fields for your publications to suit your needs, with various convenient field types. Tabs and logical field grouping are also available.
  * **Advanced advertising manager:** Precision banner targeting by country, category, section, and device type.
  * **Geo-targeting and filters:** Allow or block access for entire countries, as well as powerful filtering of users by IP, login, and email.
  * **Multi-level security:** Support for two-factor authentication (2FA Google Authenticator/OTP), CAPTCHA from both the built-in system and the most advanced providers (Google / Yandex / Cloudflare), plus a built-in antivirus for file integrity monitoring.
  * **Domain migration wizard:** Change the website address in one click with smart automatic replacement of all links in the database.
  * **Detailed permission management:** An unlimited number of user groups with extremely fine-grained access separation for modules, categories, and even individual news items.
  * **Backup management:** Create, repair, and optimize the database directly from the admin panel, with support for automatic backup uploads to the cloud.
  * **Intelligent interface:** Automatic night mode, interface scaling for 4K/5K monitors (fluid typography), and instant search across hundreds of script settings.
  * **Action logging:** Full control over your team, with logging of all key changes made by moderators and authors.
  * **User management:** Simple, clear, and convenient tools for managing visitors and users, from editing any profile information to automatic blocking by IP, login, or email address.

### 3\. Tools for Authors and Editors

Forget about routine work. DLE gives editors functionality on the level of leading global media publishers.

  * **AI assistant (any provider you choose):** Right inside the editor, AI can help write an article, rewrite text, translate text, or generate perfect SEO meta tags.
  * **Convert graphics to WebP/AVIF:** Automatic conversion of images to ultra-light next-generation formats on upload.
  * **Intelligent media handling:** TinyPNG integration for compression, HiDPI (Retina) display support, drag-and-drop uploads, and customizable text watermark overlays.
  * **One-click content embedding:** Native oEmbed support for embedding Telegram posts, YouTube/Shorts videos, Rutube, VK Video, and other services.
  * **Modern code and text editor:** Support for WYSIWYG, mathematical formulas (Latex, MathML, Katex), native spoilers, accordions, and tag autocompletion.
  * **Built-in typographer:** Automatic typographic preparation of text for website publication in a single click (proper quotation marks, dashes, non-breaking spaces).
  * **LazyLoad and playlists:** Native lazy loading of heavy media (images, iframes) and creation of audio/video playlists. Supports all modern video and audio formats and their automatic playback on the website using built-in tools.
  * **Publication management:** Scheduled posting (timer-based publication), article expiration dates (auto-archiving), and RSS content import/export.
  * **Teamwork:** Edit news directly on the website without entering the admin panel, plus article locking with notifications if another author is already editing it.
  * **File protection:** Built-in anti-leech system to prevent unauthorized file downloads via direct links.

### 4\. Features for Visitors

Make your website a place people want to return to. DLE offers excellent tools for building an active community.

  * **Social login:** One-click sign-in through VK ID, Yandex, Google, and Mail.ru. Supports unified registration across a network of websites powered by DLE.
  * **Threaded comments:** Full discussion threads with unlimited nesting, email reply subscriptions, and interactive quotes.
  * **Messenger system:** Private conversations between users in a modern chat format with message editing and deletion.
  * **Smart full-text search:** Instant article search, including any additional fields, with unique output templates.
  * **Profile personalization:** Time zone settings, instant avatar changes, popup user info cards, and display of the "Online / Offline" status.
  * **"Favorites" section:** Bookmark synchronization across user devices with instant AJAX updates.
  * **Notifications and mentions:** Browser push notifications for important events and a login mention system using the @ symbol, just like in social networks.
  * **Online document viewing:** Built-in viewing of DOCX, PDF, and XLSX files directly on website pages without the need to download them.
  * **Dynamic content:** Display different geo-targeted content depending on the visitor's country and show personalized advertising for different groups. Also supports different content for different devices (Desktop / Tablet / Smartphone / Apple devices / Android devices).
  * **Protection against vote manipulation:** Daily limits on rating news and comments (likes/dislikes), and self-service account deletion if the user wishes.
