require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

map("i", "jk", "<ESC>", { desc = "escape insert mode" })

map("n", "+", "<C-a>", { desc = "increment " })
map("n", "-", "<C-x>", { desc = "decrement " })
map("n", "<C-t>", "<cmd> enew <cr>", { desc = "new buffer" })
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

-- -- lspsaga
-- map("n", "<C-j>", "<cmd>Lspsaga diagnostic_jump_next<cr>", { desc = "LSPSaga go next diagnostic" })
-- map("n", "<C-k>", "<cmd>Lspsaga diagnostic_jump_prev<cr>", { desc = "LSPSaga go prev diagnostic" })
-- map("n", "gp", "<cmd>Lspsaga peek_definition<cr>", { desc = "LSPSaga preview defenition" })

map("n", "<leader>sv", "<cmd>sv<cr>", { desc = "Split vertical" })
map("n", "<leader>vs", "<cmd>vs<cr>", { desc = "Split horizontal" })

map("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "telescope find all todos" })

map("n", "<Bslash>", function()
  require("shade").toggle()
end, { desc = "Toggle shade.nvim" })
