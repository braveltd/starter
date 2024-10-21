require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
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
