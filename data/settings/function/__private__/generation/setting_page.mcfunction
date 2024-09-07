$data modify storage settings:data page set value \
[\
    {"text":""},\
    {"translate":"settings.page.$(key)","fallback":"$(name)","color":"$(color)"},\
    {"text":" "},\
    {"translate":"chat.square_brackets",with:[{"translate":"gui.back"}],"color":"gray","clickEvent":{"action":"change_page","value":"1"}},\
    {"storage":"settings:data","nbt":"newline"},\
    {"text":"==================="},\
    {"storage":"settings:data","nbt":"newline"},\
    {"storage":"settings:data","nbt":"newline"},\
]
function settings:__private__/util/loop {\
    nbt:"storage settings:data entries.settings",\
    function:"settings:__private__/generation/setting_line with storage settings:data loop.value",\
}
data modify storage settings:data book append from storage settings:data page