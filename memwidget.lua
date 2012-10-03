require("awful")
require("vicious")

--[[
-- Initialize widget
local memgraph = awful.widget.graph()
-- Graph properties
memgraph:set_width(40):set_height(15)
memgraph:set_background_color("#444444")
memgraph:set_gradient_colors({ "#444499", "#4499FF" })
-- Register widget
vicious.register(memgraph, vicious.widgets.mem, "$1", 3)
return memgraph.widget
--]]

local memwidget = widget({ type = "textbox" })
vicious.register(memwidget, vicious.widgets.mem, ' Mem <span color="#88AAFF">$1</span>% ')

--[[
-- From http://jasonmaur.com/awesome-wm-widgets-configuration/
-- RAM usage widget
memwidget = awful.widget.progressbar()
memwidget:set_width(15)
memwidget:set_height(30)
memwidget:set_vertical(true)
memwidget:set_background_color('#494B4F')
memwidget:set_color('#88aaff')
-- memwidget:set_gradient_colors({ '#AECF96', '#88A175', '#FF5656' })

-- RAM usage tooltip
memwidget_t = awful.tooltip({ objects = { memwidget.widget },})

vicious.cache(vicious.widgets.mem)
vicious.register(
    memwidget, vicious.widgets.mem,
    function (widget, args)
        memwidget_t:set_text(" RAM: " .. args[2] .. "MB / " .. args[3] .. "MB ")
        return args[1]
    end, 13
)
--]]

return memwidget

