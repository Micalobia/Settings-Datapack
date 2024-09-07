$data modify storage settings:data loop.values.$(nest) set from storage settings:data loop.list.$(nest)[0]
$data modify storage settings:data loop.value set from storage settings:data loop.list.$(nest)[0]
$data remove storage settings:data loop.list.$(nest)[0]
scoreboard players set #loop.break settings.data 0
$execute store result score #loop.break settings.data run function $(function)
$execute \
    store result score #loop.empty settings.data \
    run function settings:__private__/util/empty {nbt:"storage settings:data loop.list.$(nest)"}
$scoreboard players add #loop.index.$(nest) settings.data 1
$scoreboard players operation #loop.index settings.data = #loop.index.$(nest) settings.data
$execute \
    if score #loop.empty settings.data matches 0 \
    unless score #loop.break settings.data matches -1 \
    run function settings:__private__/util/_loop with storage settings:data loop.macros.$(nest)