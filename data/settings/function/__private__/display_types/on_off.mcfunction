$execute store result score #settings.value settings.data run function settings:data/get_value {key:'$(key)'}
execute if score #settings.value settings.data matches 0 \
    run data modify storage settings:data display set value "§4Off"
execute unless score #settings.value settings.data matches 0 \
    run data modify storage settings:data display set value "§2On"