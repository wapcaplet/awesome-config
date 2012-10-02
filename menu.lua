require("awful")

-- Load Debian menu entries
require("debian.menu")

-- Menu
-- Create a laucher widget and a main menu
local awesomemenu = {
   { "manual", terminal .. " -e man awesome" },
   { "restart", awesome.restart },
   { "quit", awesome.quit }
}

local mainmenu = awful.menu({
    items = {
        { "awesome", awesomemenu, beautiful.awesome_icon },
        { "Debian", debian.menu.Debian_menu.Debian },
        { "open terminal", terminal }
    }
})

local menu = awful.widget.launcher({
    image = image(beautiful.awesome_icon),
    menu = mainmenu }
)

return menu

