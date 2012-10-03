require("awful.rules")

require("keys")
require("buttons")

tags = require("tags")

-- Rules
awful.rules.rules = {
    -- All clients will match this rule.
    {
        rule = { },
        properties = {
            border_width = beautiful.border_width,
            border_color = beautiful.border_normal,
            focus = true,
            keys = clientkeys,
            buttons = clientbuttons
        }
    },

    -- Browsers
    {
        rule = { class = "Firefox" },
        callback = function(c) awful.client.movetotag(tags[mouse.screen][1], c) end
    },
    {
        rule = { class = "Google-chrome" },
        callback = function(c) awful.client.movetotag(tags[mouse.screen][1], c) end
    },

    -- Skype
    {
        rule = { class = "Skype" },
        properties = { tag = tags[2][2] },
        callback = function(c) awful.tag.incmwfact(-0.35) end
    },
    {
        rule = { class = "Skype", role = "ConversationsWindow" },
        properties = { tag = tags[2][2] },
        callback = awful.client.setslave
    },

    -- LibreOffice
    {
        rule_any = { class = { "libreoffice-startcenter", "libreoffice-calc", "libreoffice-writer" } },
        properties = { tag = tags[1][6] }
    },

    -- Graphics
    {
        rule_any = { class = { "Blender", "Inkscape", "Gimp" } },
        properties = { tag = tags[1][8] }
    },

    -- Gimp
    {
        rule = { class = "Gimp", role = "gimp-toolbox" },
        properties = { tag = tags[1][8] },
        callback = function(c)
            awful.tag.incmwfact(-0.35)
        end
    },
    {
        rule = { class = "Gimp", role = "gimp-image-window" },
        properties = { tag = tags[1][8] },
        callback = awful.client.setslave
    },

    -- { rule = { class = "gimp" },
    --   properties = { floating = true } },
    -- Set Firefox to always map on tags number 2 of screen 1.
    -- { rule = { class = "Firefox" },
    --   properties = { tag = tags[1][2] } },
}

