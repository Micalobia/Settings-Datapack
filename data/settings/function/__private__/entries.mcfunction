# Data Types
function settings:entry/advanced/add_type {\
    key:"boolean",\
    function:"settings:data/toggle",\
}
function settings:entry/advanced/add_type {\
    key:"enum",\
    function:"settings:data/cycle_enum",\
}

# Display Types
function settings:entry/advanced/add_display {\
    key:"on_off",\
    function:"settings:__private__/display_types/on_off",\
}

function settings:entry/advanced/add_display {\
    key:"yes_no",\
    function:"settings:__private__/display_types/yes_no",\
}

function settings:entry/advanced/add_display {\
    key:"enum",\
    function:"settings:__private__/display_types/enum",\
}