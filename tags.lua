require("awful")

layouts = require("layouts")

local tag_names = {}
local t
for t = 1, 9 do
    table.insert(tag_names, ' ' .. t .. ' ')
end

local tags = {}
for s = 1, screen.count() do
    -- Each screen has its own tag table.
    -- tags[s] = awful.tag({ 1, 2, 3, 4, 5, 6, 7, 8, 9 }, s, layouts[1])
    -- tags[s] = awful.tag(tags.settings[s].names, s, tags.settings[s].layout)
    tags[s] = awful.tag(tag_names, s, layouts[1])
end

return tags
