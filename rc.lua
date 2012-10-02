require("awful")
require("awful.autofocus")
require("beautiful")
require("naughty")
require("vicious")

beautiful.init(awful.util.getdir('config') .. "/theme.lua")

-- Load custom modules
require("layouts")
require("tags")
require("keys")
require("terminal")
require("rules")
require("signals")
require("wibox")

-- TODO: Figure out how to put this in a separate module
local menu = require("menu")
local taglist = require("taglist")
local tasklist = require("tasklist")
local promptbox = require("promptbox")
local layoutbox = require("layoutbox")
local memwidget = require("memwidget")
local cpuwidget = require("cpuwidget")

-- Create a textclock widget
textclock = awful.widget.textclock({ align = "right" })

-- Create a systray
systray = widget({ type = "systray" })

-- Create a wibox for each screen and add it
wibox = {}
for s = 1, screen.count() do
    -- Create the wibox
    wibox[s] = awful.wibox({ position = "top", screen = s })
    -- Add widgets to the wibox - order matters
    wibox[s].widgets = {
        {
            menu,
            taglist[s],
            promptbox[s],
            layout = awful.widget.layout.horizontal.leftright
        },
        layoutbox[s],
        s == 1 and textclock or nil,
        s == 1 and memwidget or nil,
        s == 1 and cpuwidget or nil,
        s == 1 and systray or nil,
        tasklist[s],
        layout = awful.widget.layout.horizontal.rightleft
    }
end

require("startup")
