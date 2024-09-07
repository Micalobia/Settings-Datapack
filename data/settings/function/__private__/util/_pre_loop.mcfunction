$data modify storage settings:data loop.list.$(nest) set from $(nbt)
$data modify storage settings:data loop.macros.$(nest).function set value "$(function)"
$data modify storage settings:data loop.macros.$(nest).nest set value $(nest)
$scoreboard players set #loop.index.$(nest) settings.data 0
scoreboard players set #loop.index settings.data 0
$function settings:__private__/util/_loop with storage settings:data loop.macros.$(nest)