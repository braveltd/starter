-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "catppuccin",
  theme_toggle = { "catppuccin", "everforest_light" },

  integrations = { "todo", "trouble", "lspsaga", "notify" },

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
