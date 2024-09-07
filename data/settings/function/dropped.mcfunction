advancement revoke @s only settings:dropped_item
scoreboard players set @s settings.dropped 0
execute as @e[type=item,distance=..2] if data entity @s Item.components."minecraft:custom_data".settings run kill @s