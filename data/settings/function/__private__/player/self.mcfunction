data modify storage settings:data player set value {}
function settings:__private__/util/loop {\
    nbt:"storage settings:data entries.settings",\
    function:"settings:__private__/player/display with storage settings:data loop.value",\
}