-- Startup apps
local r = require("runonce")
r.run("nm-applet &")
r.run("gnome-sound-applet &")
r.run("gnome-settings-daemon &")

