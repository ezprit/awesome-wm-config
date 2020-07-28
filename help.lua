local awful = require("awful")
local hotkeys_popup = require("awful.hotkeys_popup")
-- Enable hotkeys help widget for VIM and other apps
-- when client with a matching name is opened:
require("awful.hotkeys_popup.keys")

local help = {};

function help.show()
    hotkeys_popup.show_help(nil, awful.screen.focused())
end

return help;
