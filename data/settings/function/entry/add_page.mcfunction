# key  [str] => key for the page
# name  [str] => name for the page
# color [hex] => color for the page
$data modify storage settings:data entries.pages append value {\
    key:"$(key)",\
    name:"$(name)",\
    color:"$(color)",\
}