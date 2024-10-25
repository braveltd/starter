---@type NvPluginSpec[]
return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      {
        -- snippet plugin
        "L3MON4D3/LuaSnip",
        config = function(_, opts)
          require("luasnip").config.set_config(opts)

          local luasnip = require "luasnip"

          luasnip.filetype_extend("javascriptreact", { "html" })
          luasnip.filetype_extend("typescriptreact", { "html" })
          luasnip.filetype_extend("svelte", { "html" })

          require "nvchad.configs.luasnip"
        end,
      },

      -- ai based completion
      {
        "jcdickinson/codeium.nvim",
        config = function()
          require("codeium").setup {}
        end,
      },
    },

    config = function(_, opts)
      table.insert(opts.sources, 1, { name = "codeium" })
      opts.experimental = { ghost_text = true }
      require("cmp").setup(opts)
    end,
  },

  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "black",
        "css-lsp",
        "emmet-ls",
        "eslint-lsp",
        "eslint_d",
        "html-lsp",
        "json-lsp",
        "jsonlint",
        "lua-language-server",
        "prettierd",
        "prettier",
        "pyright",
        "stylua",
        "tree-sitter-cli",
        "typescript-language-server",
      },
    },
  },

  -- distraction free mode
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    config = function()
      require "configs.zenmode"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "tsx",
        "toml",
        "javascript",
        "typescript",
        "python",
        "markdown",
        "bash",
      },
      auto_install = true,
      autotag = {
        enable = true,
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "gnn",
          node_incremental = "grn",
          scope_incremental = "grc",
          node_decremental = "grm",
        },
      },
    },
    dependencies = {
      {
        "windwp/nvim-ts-autotag",
        config = function()
          require("nvim-ts-autotag").setup()
        end,
      },
    },
  },

  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
      { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
  },

  {
    "folke/trouble.nvim",
    dependencies = { "folke/todo-comments.nvim" },
    opts = {}, -- for default options, refer to the configuration section for custom setup.
    cmd = { "Trouble", "TodoTrouble" },
    config = function()
      dofile(vim.g.base46_cache .. "trouble")

      require("trouble").setup()
    end,
    keys = {
      {
        "<leader>xt",
        "<Cmd>Trouble todo<CR>",
        desc = "Trouble find all todos",
      },
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Trouble Diagnostics",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Trouble Buffer Diagnostics",
      },
      {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Trouble Symbols",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "Trouble LSP Definitions / references / ...",
      },
      {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Trouble Location List",
      },
      {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Trouble Quickfix List",
      },
    },
  },

  {
    "rcarriga/nvim-notify",
    config = function()
      dofile(vim.g.base46_cache .. "notify")
      require("notify").setup {
        background_colour = "#000000",
      }
    end,
  },

  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    },
    config = function()
      require "configs.noice"
    end,
  },

  {
    "nvimdev/lspsaga.nvim",
    config = function()
      dofile(vim.g.base46_cache .. "lspsaga")
      require("lspsaga").setup {}
    end,
    event = "LspAttach",
    dependencies = {
      "nvim-treesitter/nvim-treesitter", -- optional
      "nvim-tree/nvim-web-devicons", -- optional
    },
  },

  {
    "gbprod/substitute.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require "configs.substitute"
    end,
  },

  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = { "BufReadPre", "BufNewFile" },
    -- event = "VeryLazy",
    config = true,
  },

  {
    "folke/todo-comments.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require "configs.todo-comments"
    end,
  },

  -- smooth scroll
  {
    "karb94/neoscroll.nvim",
    keys = { "<C-d>", "<C-u>" },
    config = function()
      require("neoscroll").setup()
    end,
  },

  -- dim inactive windows
  {
    "andreadev-it/shade.nvim",
    config = function()
      require("shade").setup {
        exclude_filetypes = { "NvimTree" },
      }
    end,
  },

  {
    "nvim-telescope/telescope.nvim",
    opts = {
      extensions_list = { "fzf", "nerdy" },
    },
    dependencies = {
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      "2kabhishek/nerdy.nvim",
      "folke/todo-comments.nvim",
    },
  },

  "NvChad/nvcommunity",

  { import = "nvcommunity.editor.telescope-undo" },
}
