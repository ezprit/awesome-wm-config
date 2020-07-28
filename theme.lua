
local awful = require("awful")
local gears = require("gears")
local beautiful = require("beautiful")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

beautiful.init(awful.util.get_configuration_dir() .. "themes/macos-dark/theme.lua")
--beautiful.init(awful.util.get_configuration_dir() .. "themes/macos-bright/theme.lua")
beautiful.wallpaper = os.getenv("HOME") .. "/wallpaper.jpg"
beautiful.master_fill_policy = "expand"
beautiful.useless_gap = 0
beautiful.border_radius = 0
beautiful.titlebar_height = dpi(20)
beautiful.titlebar_enable = false
beautiful.gap_single_client = true
beautiful.border_width = dpi(1)
--gears.wallpaper.set("#b1ab99")
--

function beautiful.set_wallpaper(s)
    -- Wallpaper
    if beautiful.wallpaper then
        local wallpaper = beautiful.wallpaper
        -- If wallpaper is a function, call it with the screen
        if type(wallpaper) == "function" then
            wallpaper = wallpaper(s)
        end
        gears.wallpaper.maximized(wallpaper, s, false)
    end
end

return beautiful;
