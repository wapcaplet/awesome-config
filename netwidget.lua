require("vicious")

-- {{{ Wibox
--  Network usage widget
-- Initialize widget
local netwidget = widget({ type = "textbox" })
-- Register widget
vicious.register(
    netwidget, vicious.widgets.net,
    'Net <span color="#CC9393">${eth0 down_kb}</span> kb down <span color="#7F9F7F">${eth0 up_kb}</span> kb up',
    3
)

return netwidget
