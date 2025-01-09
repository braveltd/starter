---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "catppuccin",
  theme_toggle = { "catppuccin", "everforest_light" },

  integrations = { "todo", "trouble", "lspsaga", "notify", "avante" },

  -- makes comments in italic style
  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

M.ui = {
  telescope = {
    style = "borderless",
  },

  statusline = {
    theme = "default",
    separator_style = "block",
  },
}

M.nvdash = {
  load_on_startup = true,
}

return M
