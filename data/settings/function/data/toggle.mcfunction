$execute store result score #toggle.value settings.data run function settings:data/get_value {key:'$(key)'}
$execute if score #toggle.value settings.data matches 0 run function settings:data/set {key:'$(key)',value:'1b'}
$execute unless score #toggle.value settings.data matches 0 run function settings:data/set {key:'$(key)',value:'0b'}