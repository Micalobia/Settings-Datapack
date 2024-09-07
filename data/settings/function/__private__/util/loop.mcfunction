$data modify storage settings:data loop.macro set value {nbt:"$(nbt)",function:"$(function)"}
execute store result storage settings:data loop.macro.nest int 1 run scoreboard players get #loop.nest settings.data
scoreboard players add #loop.nest settings.data 1
function settings:__private__/util/_pre_loop with storage settings:data loop.macro
scoreboard players remove #loop.nest settings.data 1