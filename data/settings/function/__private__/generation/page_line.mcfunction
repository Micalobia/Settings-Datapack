$data modify storage settings:data page append value {\
    "translate":"settings.gui.page_line",\
    "fallback":"%s. %s",\
    "with":[\
        "$(name)",\
    ],\
    "color": "$(color)",\
    "hoverEvent": {\
        "action": "show_text",\
        "contents": {\
            "translate":"settings.gui.go_to_page",\
            "fallback": "Go to page",\
            "color": "$(color)",\
        }\
    },\
    "clickEvent": {\
        "action": "change_page",\
    },\
}
scoreboard players operation #page.value settings.data = #loop.index settings.data
scoreboard players operation #page.page settings.data = #loop.index settings.data
scoreboard players add #page.value settings.data 1
scoreboard players add #page.page settings.data 2
execute store result storage settings:data temp int 1 run scoreboard players get #page.value settings.data
data modify storage settings:data page[-1].with prepend string storage settings:data temp
execute store result storage settings:data page[-1].clickEvent.value int 1 run scoreboard players get #page.page settings.data
data modify storage settings:data page[-1].clickEvent.value set string storage settings:data page[-1].clickEvent.value
data modify storage settings:data page append value {"storage":"settings:data","nbt":"newline"}