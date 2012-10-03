require("awful")

layouts = require("layouts")

local tags = {}

-- First screen tags
tags[1] = awful.tag(
    {' web ', ' term ', ' doc ', ' gfx ', '5', ' 6 ', '7', ' 8 ', '9'},
    1, layouts[1]
)

-- Second screen tags
tags[2] = awful.tag(
    {' web ', ' term ', ' skype ', ' 4 ', ' 5 ', ' 6 ', '7', ' 8 ', '9'},
    2, layouts[1]
)

return tags

