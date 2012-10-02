require("awful")
require("vicious")

--[[
-- Initialize widget
local cpugraph = awful.widget.graph()
-- Graph properties
cpugraph:set_width(40):set_height(15)
cpugraph:set_background_color("#444444")
cpugraph:set_gradient_colors({ "#449944", "#FF4444" })
-- Register widget
vicious.register(cpugraph, vicious.widgets.cpu, "$1", 3)
return cpugraph.widget
--]]

local cpuwidget = widget({ type = "textbox" })
vicious.register(cpuwidget, vicious.widgets.cpu, ' CPU <span color="#44DD44">$1</span>% ')
return cpuwidget

