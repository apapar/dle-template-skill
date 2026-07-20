# Smartphone Support

*DLE documentation topic #14*

DataLife Engine can automatically detect what device a visitor is using to access your website. If the user visits your website from a smartphone, DataLife Engine can recognize this and prepare a special lightweight version of your website for display, with minimal graphics and reduced traffic usage.

To enable this feature, in the Admin Panel, in the script settings, enable the option: **Enable automatic smartphone support**. In the same script settings, you can enable or disable the display of images in news items. You can also manually force the smartphone version of the website to be displayed by opening `https://website.com/index.php?action=mobile`, and to disable the smartphone version and return to the full version, use the link `https://website.com/index.php?action=mobiledisable`

The `/templates/` folder must also contain a template folder named **smartphone**. This template is used to display the website if the user visits your website from a mobile phone. In this template, you can use all the same features as in a regular template. All tags and capabilities are fully identical to the regular template. However, we recommend using only the minimum necessary elements and keeping the mobile screen size in mind. In the distribution archive, we have prepared one such standard template with the minimum amount of information and size. We recommend using it as the basis when creating your own template.
