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

--[[
-- From http://jasonmaur.com/awesome-wm-widgets-configuration/
-- CPU usage widget
cpuwidget = awful.widget.graph()
cpuwidget:set_width(50)
cpuwidget:set_height(30)
cpuwidget:set_background_color("#494B4F")
cpuwidget:set_color("#44dd44")
-- cpuwidget:set_gradient_colors({ "#FF5656", "#88A175", "#AECF96" })

cpuwidget_t = awful.tooltip({ objects = { cpuwidget.widget },})

-- Register CPU widget
vicious.register(
    cpuwidget, vicious.widgets.cpu,
    function (widget, args)
        cpuwidget_t:set_text("CPU Usage: " .. args[1] .. "%")
        return args[1]
    end
)
--]]

return cpuwidget

