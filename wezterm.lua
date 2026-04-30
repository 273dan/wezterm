local wezterm = require 'wezterm'
local config = {}

-- Colours and font
config.color_scheme = "Gruvbox Dark (Gogh)"
config.font = wezterm.font "FantasqueSansM Nerd Font"

-- Transparency
if os.getenv("XDG_CURRENT_DESKTOP") ~= "sway:wlroots:swayfx" then
  config.window_background_opacity = 0.7
end

-- Tab bar
config.use_fancy_tab_bar = false

-- Keybinds
config.keys = {
    {
        key = 'RightArrow',
        mods = "CTRL|SHIFT",
        action = wezterm.action.ActivateTabRelative(1)
    },
    {
        key = 'LeftArrow',
        mods = "CTRL|SHIFT",
        action = wezterm.action.ActivateTabRelative(-1)
    },
    {
        key = '{',
        mods = "CTRL|SHIFT",
        action = wezterm.action.ActivateCopyMode
    },
    {
        key = 'RightArrow',
        mods = "CTRL|SHIFT|ALT",
        action = wezterm.action.MoveTabRelative(1)
    },
    {
        key = 'LeftArrow',
        mods = "CTRL|SHIFT|ALT",
        action = wezterm.action.MoveTabRelative(-1)
    },
}

return config
