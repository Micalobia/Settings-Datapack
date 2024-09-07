scoreboard players add #settings.number settings.data 1
execute store result storage settings:data macro.page int 1 run scoreboard players get #settings.number settings.data
$item modify entity @s weapon.mainhand settings:page/$(page)