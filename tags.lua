require("layouts")

-- {{{ Tags
-- Define a tag table which hold all screen tags.
tags = {}
tags = {
  settings = {
    {
      names = { 'web', 'term', '3', '4' },
      layout = { layouts[3], layouts[1], layouts[1], layouts[2] }
    },
    {
      names = { 'web', 'term', '3', '4' },
      layout = { layouts[3], layouts[1], layouts[1], layouts[2] }
    },
  }
}
for s = 1, screen.count() do
    -- Each screen has its own tag table.
    -- tags[s] = awful.tag({ 1, 2, 3, 4, 5, 6, 7, 8, 9 }, s, layouts[1])
    tags[s] = awful.tag(tags.settings[s].names, s, tags.settings[s].layout)
end
-- }}}


