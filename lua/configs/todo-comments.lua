local todo_comments = require "todo-comments"

dofile(vim.g.base46_cache .. "todo")

todo_comments.setup {
  keywords = {
    GROUP = { icon = " ", color = "hint" },
    HERE = { icon = " ", color = "here" },
  },
  colors = { here = "#fdf5a4" },
  highlight = { multiline = true },
}

local keymap = vim.keymap

keymap.set("n", "]t", function()
  todo_comments.jump_next()
end, { desc = "Todo comment Next" })

keymap.set("n", "[t", function()
  todo_comments.jump_prev()
end, { desc = "Todo comment Previous" })
