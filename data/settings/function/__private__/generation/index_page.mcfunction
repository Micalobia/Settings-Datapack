data modify storage settings:data page set value \
[\
    {"text":"Settings"},\
    {"storage":"settings:data","nbt":"newline"},\
    {"text":"==================="},\
    {"storage":"settings:data","nbt":"newline"},\
    {"storage":"settings:data","nbt":"newline"},\
]
function settings:__private__/util/loop {\
    nbt:"storage settings:data entries.pages",\
    function:"settings:__private__/generation/page_line with storage settings:data loop.value",\
}
data modify storage settings:data book append from storage settings:data page