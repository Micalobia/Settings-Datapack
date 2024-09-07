# page        [str] => key for the page
# key         [str] => key for the setting. Cannot include '.', prefer namespace:setting format
# name        [str] => name for the setting
# description [str] => description for the setting
# default     [val] => default value for the setting
# display     [str] => the display type of the setting
# type        [str] => the data type of the setting
$data modify storage settings:data entries.settings append value {\
    page:"$(page)",\
    key:"$(key)",\
    name:"$(name)",\
    description:"$(description)",\
    display:"$(display)",\
    type:"$(type)",\
}
$data modify storage settings:data users.default."$(key)" set value $(default)