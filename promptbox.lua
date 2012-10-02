require("awful")

local promptbox = {}
for s = 1, screen.count() do
    -- Create a promptbox for each screen
    promptbox[s] = awful.widget.prompt({ layout = awful.widget.layout.horizontal.leftright })
end

return promptbox
