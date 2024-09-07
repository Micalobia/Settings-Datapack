$data modify storage settings:data compare.value set from $(left)
$execute store success score #compare.success settings.data run data modify storage settings:data compare.value set from $(right)
execute if score #compare.success settings.data matches 0 run return 1
return fail