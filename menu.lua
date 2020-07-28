local awful = require("awful")
local config = require("config")
local has_fdo, freedesktop = pcall(require, "freedesktop")
local help = require("help")
local theme = require("theme")

-- Create a launcher widget and a main menu
myawesomemenu = {
   { "hotkeys", help.show },
   { "manual", config.terminal .. " -e man awesome" },
   { "edit config", config.editor_cmd .. " " .. awesome.conffile },
   { "restart", awesome.restart },
   { "quit", function() awesome.quit() end },
}

local menu_awesome = { "awesome", myawesomemenu, theme.awesome_icon }
local menu_terminal = { "open terminal", terminal }

if has_fdo then
    mymainmenu = freedesktop.menu.build({
        before = { menu_awesome },
        after =  { menu_terminal }
    })
else
    mymainmenu = awful.menu({
        items = {
                  menu_awesome,
                  { "Debian", debian.menu.Debian_menu.Debian },
                  menu_terminal,
                }
    })
end

return mymainmenu
