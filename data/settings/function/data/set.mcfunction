execute unless score @s settings.id matches 1.. run return fail
$execute unless data storage settings:data users.default.$(key) run return fail
execute store result storage settings:data macro.id int 1 run scoreboard players get @s settings.id
$data modify storage settings:data macro.key set value "$(key)"
$data modify storage settings:data macro.value set value "$(value)"
function settings:__private__/data/set with storage settings:data macro
return 1