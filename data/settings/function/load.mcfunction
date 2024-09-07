# Might change this and make it more dynamic, but it's hard because of how the book works
scoreboard objectives add Settings trigger {"text":"Settings","color":"#f0e2bd","clickEvent":{"action":"run_command","value":"/trigger Settings"}}

scoreboard objectives add settings.data dummy
scoreboard objectives add settings.id dummy
scoreboard objectives add settings.dropped minecraft.custom:minecraft.drop

scoreboard players set #loop.nest settings.data 0
scoreboard players add #master settings.id 0

# Mojang not letting me do a newline character in NBT, gotta do the jankiest stuff
summon item_display ~ ~ ~ {item:{id:"knowledge_book"},view_range:0,Tags:["settings.fresh"]}
item modify entity @n[type=item_display,tag=settings.fresh] container.0 settings:newline
data modify storage settings:data newline set from entity @n[type=item_display,tag=settings.fresh] item.components."minecraft:custom_data".newline
kill @n[type=item_display,tag=settings.fresh]

data modify storage settings:data entries set value {settings:[],pages:[],enums:{},display_types:{},data_types:{}}
data modify storage settings:data users.default set value {}

function #settings:entries
function settings:__private__/generation/book