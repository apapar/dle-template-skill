# User Ban or Access Denied to the Website

*DLE documentation topic #67*

The output of this section is configured in the **banned.tpl** file. This section configures the templates responsible for displaying information that the visitor is denied access to the website:

`{description}` |  Outputs the reason why access to the website was blocked for the visitor
---|---
`{end}` |  Outputs the blocking end date if it was set
`[banned-from]`
text
`[/banned-from]` |  Output the enclosed text if the block was assigned by an administrator
`{banned-from}` |  Outputs the login of the user who set the website block.
