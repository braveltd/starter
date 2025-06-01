---@type ChadrcConfig
local M = {}

M.base46 = {
  transparency = true,
  theme = "catppuccin",
  theme_toggle = { "catppuccin", "everforest_light" },

  integrations = {
    "lspsaga",
    "trouble",
    "blankline",
    "cmp",
    "codeactionmenu",
    "dap",
    "devicons",
    "hop",
    "lsp",
    "markview",
    "mason",
    "notify",
    "nvimtree",
    "rainbowdelimiters",
    "semantic_tokens",
    "todo",
    "whichkey",
  },

  hl_override = {
    DevIconMd = { fg = "#FFFFFF", bg = "NONE" },
    FloatTitle = { link = "FloatBorder" },
    CursorLine = { bg = "NONE" },
    CursorLineNr = { bold = true },
    CmpBorder = { link = "FloatBorder" },
    CmpDocBorder = { link = "FloatBorder" },
    TelescopeBorder = { link = "FloatBorder" },
    TelescopePromptBorder = { link = "FloatBorder" },
    Comment = { italic = true },
    ["@comment"] = { italic = true },
    ["@keyword"] = { italic = true },
    ["@markup.heading"] = { fg = "NONE", bg = "NONE" },
  },

  hl_add = {
    YankVisual = { bg = "lightbg" },
    DevIconToml = { fg = "#9C4221", bg = "NONE" },
    Border = { link = "FloatBorder" },
    GitSignsCurrentLineBlame = { link = "Comment" },
    CodeActionSignHl = { fg = "#F9E2AF" },
    ["@number.luadoc"] = { fg = "Comment" },
    ["@markup.quote.markdown"] = { bg = "NONE" },
    ["@markup.raw.block.markdown"] = { link = "MarkviewLayer2" },
  },
}

M.ui = {
  cmp = {
    style = "default",
  },

  telescope = {
    style = "borderless",
  },

  statusline = {
    theme = "minimal",
    separator_style = "round",
  },

  tabufline = {
    lazyload = false,
    order = { "buffers", "tabs", "btns" },
  },
}

M.nvdash = {
  load_on_startup = true,
}

M.cheatsheet = {
  excluded_groups = { "_" },
}

M.colorify = {
  enabled = true,
  mode = "virtual",
  virt_text = "󱓻 ",
  highlight = { hex = true, lspvars = true },
}

M.lsp = {
  signature = false,
}

M.term = {
  float = {
    border = "rounded",
    height = 0.5,
    width = 0.58,
    col = 0.2,
    row = 0.2,
  },
  sizes = {},
}

return M
