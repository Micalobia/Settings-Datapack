# Gets the current user's <key> setting, and stores it in `settings:output get`
# Will return the default value if it isn't a player, since it'll be user_0 which isn't a player
execute store result storage settings:data macro.id int 1 run scoreboard players get @s settings.id
$data modify storage settings:data macro.key set value "$(key)"
function settings:__private__/data/get with storage settings:data macro