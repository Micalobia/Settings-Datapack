$execute store result score #settings.value settings.data run function settings:data/get_value {key:'$(key)'}
scoreboard players add #settings.value settings.data 1
$execute store result score #settings.length settings.data run data get storage settings:data entries.enums.$(key)
scoreboard players operation #settings.value settings.data %= #settings.length settings.data
execute store result storage settings:data macro.value int 1 run scoreboard players get #settings.value settings.data
$data modify storage settings:data macro.key set value '$(key)'
function settings:data/set with storage settings:data macro