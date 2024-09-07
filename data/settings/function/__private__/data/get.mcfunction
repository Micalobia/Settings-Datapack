data remove storage settings:output get
$execute store success score #get.success settings.data \
    run data modify storage settings:output get set from storage settings:data users.user_$(id).$(key)
$execute if score #get.success settings.data matches 0 \
    run data modify storage settings:output get set from storage settings:data users.default.$(key)