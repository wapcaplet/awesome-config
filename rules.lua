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

    {
        rule = { class = "pinentry" },
        properties = {
            floating = true
        }
    },

    {
        rule = { class = "Google-chrome" },
        -- Put Chrome on current screen, tag 1
        callback = function(c)
            awful.client.movetotag(tags[mouse.screen][1], c)
        end
    },

    {
        rule = { class = "Skype", role = "ConversationsWindow" },
        -- Always put Skype on screen 2, tag 4
        properties = {
            tag = tags[2][4]
        },
        callback = awful.client.setslave
    },

    {
        rule = { class = "Skype" },
        -- Always put Skype on screen 2, tag 4
        properties = {
            tag = tags[2][4]
        }
    },

    -- { rule = { class = "gimp" },
    --   properties = { floating = true } },
    -- Set Firefox to always map on tags number 2 of screen 1.
    -- { rule = { class = "Firefox" },
    --   properties = { tag = tags[1][2] } },
}

