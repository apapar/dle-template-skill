# Advertising Management

*DLE documentation topic #29*

This module is intended for fast and convenient placement and management of your advertising materials on the website. To place your banner on the website, you only need to add the banner tag to the template once; after that, you can easily change or edit the banner code in the admin panel without affecting the templates.

After adding your banner, you can place its tag in the **main.tpl** or **fullstory.tpl** templates. If you add a banner to be shown between short news items, you do not need to add the tag to the template because the banner will be inserted automatically between the news items.

**Example:**

\- Name: header
\- Description: Top banner
\- Enable banner display: Yes
\- Show only on the main page: No
\- Pin position: No
\- Placement in short news: No

If you want this banner to be shown only for certain groups, you can select, when adding the banner, the user groups for which it should be displayed. You can also additionally set the start date and time and the end date and time for the banner display.

After that, you can add the banner display tag to your **main.tpl** or **fullstory.tpl** template: `{banner_header}`

You can use HTML and JavaScript when adding the banner code.
