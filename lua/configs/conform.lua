local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "black" },
    cpp = { "clang-format" },
    c = { "clang-format" },

    -- webdev
    javascript = { "prettierd" },
    javascriptreact = { "prettierd" },
    typescript = { "prettierd" },
    typescriptreact = { "prettierd" },

    css = { "prettierd" },
    scss = { "prettierd" },
    html = { "prettierd" },

    -- info files, config files
    yaml = { "prettierd" },
    toml = { "taplo" },
    json = { "prettierd" },
    jsonc = { "prettierd" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 1750,
    lsp_fallback = true,
  },
}

return options
