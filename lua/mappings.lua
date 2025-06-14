require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

map("i", "jk", "<ESC>", { desc = "escape insert mode" })

map("n", "+", "<C-a>", { desc = "increment" })
map("n", "-", "<C-x>", { desc = "decrement" })

map("n", "<C-t>", "<cmd> enew <cr>", { desc = "New buffer" })

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

map("n", "<leader>sv", "<cmd>sv<cr>", { desc = "Split vertical" })
map("n", "<leader>vs", "<cmd>vs<cr>", { desc = "Split horizontal" })

map("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "telescope find all todos" })

map("n", "<Bslash>", function()
  require("shade").toggle()
end, { desc = "Toggle shade" })

-- open hue editor
map("n", "<leader>sc", function()
  require("plenary.reload").reload_module "minty.huefy"
  require("minty.huefy").open()
end)

-- support for nice visual menu vscode like
map({ "n", "v" }, "<RightMouse>", function()
  require("menu.utils").delete_old_menus()

  vim.cmd.exec '"normal! \\<RightMouse>"'

  -- clicked buf
  local buf = vim.api.nvim_win_get_buf(vim.fn.getmousepos().winid)
  local options = vim.bo[buf].ft == "NvimTree" and "nvimtree" or "default"

  require("menu").open(options, { mouse = true })
end)

vim.keymap.set("n", "<A-e>", function()
  local options = vim.bo.ft == "NvimTree" and "nvimtree" or "default"
  require("menu").open(options)
end, {})
