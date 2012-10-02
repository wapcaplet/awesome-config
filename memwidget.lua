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
return memwidget

