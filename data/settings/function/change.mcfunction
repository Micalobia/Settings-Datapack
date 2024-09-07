advancement revoke @s only settings:change
scoreboard players operation #settings.change settings.data = @s Settings
scoreboard players remove #settings.change settings.data 2
execute store result storage settings:data macro.index int 1 run scoreboard players get #settings.change settings.data
function settings:__private__/change/pre with storage settings:data macro
function settings:command