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

-- TODO: Figure out how to put this in a separate module
local menu = require("menu")
local taglist = require("taglist")
local tasklist = require("tasklist")
local promptbox = require("promptbox")
local layoutbox = require("layoutbox")
local memwidget = require("memwidget")
local cpuwidget = require("cpuwidget")
local netwidget = require("netwidget")
local separator = require("separator")

-- Create a textclock widget
textclock = awful.widget.textclock({ align = "right" })

-- Create a systray
systray = widget({ type = "systray" })

-- Create a wibox for each screen and add it
wibox = {}
wibox[1] = awful.wibox({ position = "top", screen = 1 })
wibox[1].widgets = {
    {
        menu,
        taglist[1],
        promptbox[1],
        layout = awful.widget.layout.horizontal.leftright
    },
    layoutbox[1],
    textclock,
    systray,

    netwidget,
    separator,
    memwidget,
    separator,
    cpuwidget,

    tasklist[1],
    layout = awful.widget.layout.horizontal.rightleft
}

wibox[2] = awful.wibox({ position = "top", screen = 2 })
wibox[2].widgets = {
    {
        taglist[2],
        promptbox[2],
        layout = awful.widget.layout.horizontal.leftright
    },
    layoutbox[2],
    tasklist[2],
    layout = awful.widget.layout.horizontal.rightleft
}

require("startup")
