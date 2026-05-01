local wezterm = require 'wezterm'
local config = {}

-- Colours and font
config.color_scheme = "Gruvbox Dark (Gogh)"
config.font = wezterm.font "FantasqueSansM Nerd Font"

-- Sway specific
if os.getenv("XDG_CURRENT_DESKTOP") ~= "sway:wlroots" then
  config.window_background_opacity = 0.7
else
  config.adjust_window_size_when_changing_font_size = false
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
