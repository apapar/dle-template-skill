# Question and Answer System

*DLE documentation topic #31*

The Question and Answer system helps prevent spam bots from acting during registration, news posting, or commenting. To do this, the administrator must specify a list of questions and answers in a special section. This system can be enabled separately for registration, adding news, and adding comments. For website visitor registration, the system is enabled in the script settings, while for adding news and comments it is enabled in group settings and can be enabled only for certain user groups. The Question and Answer system is fully autonomous and independent of the website CAPTCHA, and can be used either together with the CAPTCHA or separately.

This system works with the following tags:

Template tags `[question]` text `[/question]` output the text enclosed between them only if the system is activated.

The `{question}` tag outputs the question for the visitor.
