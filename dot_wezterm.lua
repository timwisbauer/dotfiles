local wezterm = require 'wezterm'
local act = wezterm.action
local config = wezterm.config_builder()

-- --------------------------------------------------------------------
-- SETTINGS
-- --------------------------------------------------------------------
config.initial_cols = 120
config.initial_rows = 28
config.font_size = 18
config.color_scheme = "Catppuccin Mocha"
config.window_decorations = "TITLE|RESIZE|MACOS_FORCE_DISABLE_SHADOW"

-- Optional: This makes the split transition look smoother
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

-- --------------------------------------------------------------------
-- LEADER KEY
-- --------------------------------------------------------------------
-- Sets your leader key to CTRL-A
config.leader = { key = 'a', mods = 'CTRL', timeout_milliseconds = 1000 }

-- --------------------------------------------------------------------
-- THE "POPUP" ACTION
-- --------------------------------------------------------------------
-- We define this once so we can use it for both shortcuts.
-- Note: Percent = 99 prevents the "No space for split" error.
local open_lazygit = act.SplitPane {
  direction = 'Left',
  size = { Percent = 99 }, 
  top_level = true,
  command = { args = { '/opt/homebrew/bin/lazygit' } },
}

-- --------------------------------------------------------------------
-- KEY BINDINGS
-- --------------------------------------------------------------------
config.keys = {
  -- 1. Direct Shortcut: CTRL + G
  {
    key = 'g',
    mods = 'CTRL',
    action = open_lazygit,
  },

  -- 2. Sequence Start: LEADER then 'g'
  {
    key = 'g',
    mods = 'LEADER',
    action = act.ActivateKeyTable {
      name = 'git_nav',
      one_shot = true,
    },
  },
}

-- --------------------------------------------------------------------
-- KEY TABLES (For the sequence)
-- --------------------------------------------------------------------
config.key_tables = {
  -- This handles the second "g" in the "Leader + G + G" sequence
  git_nav = {
    {
      key = 'g',
      action = open_lazygit,
    },
  },
}

return config
