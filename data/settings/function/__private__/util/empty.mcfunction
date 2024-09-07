# Returns true if array is empty, fails otherwise
$execute store result score #empty.length settings.data run data get $(nbt)
execute if score #empty.length settings.data matches 0 run return 1
return fail