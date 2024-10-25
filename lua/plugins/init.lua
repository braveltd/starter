return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "folke/todo-comments.nvim" },
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
      },
    },
    config = function()
      require("nvim-treesitter.configs").setup {
        auto_install = true,
      }
    end,
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
    cmd = "Trouble",
    config = function()
      dofile(vim.g.base46_cache .. "trouble")
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

  -- {
  --   "Exafunction/codeium.nvim",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --     "hrsh7th/nvim-cmp",
  --   },
  --   config = function()
  --     require("codeium").setup {}
  --   end,
  -- },
}
