require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

map("i", "jk", "<ESC>", { desc = "escape insert mode" })

map("n", "+", "<C-a>", { desc = "increment " })
map("n", "-", "<C-x>", { desc = "decrement " })
map("n", "<C-t>", "<cmd> enew <CR>", { desc = "new buffer" })
map("n", "<C-w><left>", "<C-w><", { desc = "Resize left" })
map("n", "<C-w><right>", "<C-w>>", { desc = "Resize right" })
map("n", "<C-w><up>", "<C-w>+", { desc = "Resize up" })
map("n", "<C-w><down>", "<C-w>-", { desc = "Resize down" })

map("n", "<leader>tt", function()
  require("base46").toggle_transparency()
end, {
  desc = "Toggle transparency",
})

map("n", "x", '"_x', { desc = "Remove current character without yank" })

-- lspsaga
map("n", "<C-j>", "<Cmd>Lspsaga diagnostic_jump_next<CR>", { desc = "LSPSaga go next diagnostic" })
map("n", "<C-k>", "<Cmd>Lspsaga diagnostic_jump_prev<CR>", { desc = "LSPSaga go prev diagnostic" })
map("n", "gp", "<Cmd>Lspsaga peek_definition<CR>", { desc = "LSPSaga preview defenition" })

map("n", "<leader>sv", "<Cmd>sv<CR>", { desc = "Split vertical" })
map("n", "<leader>vs", "<Cmd>vs<CR>", { desc = "Split horizontal" })

map("n", "<leader>ft", "<Cmd>TodoTelescope<CR>", { desc = "telescope find all todos" })

map("n", "<Bslash>", function()
  require("shade").toggle()
end, { desc = "Toggle shade.nvim" })
