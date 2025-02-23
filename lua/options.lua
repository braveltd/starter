require "nvchad.options"

local o = vim.o

o.title = true

o.cursorlineopt = "both" -- to enable cursorline!

o.relativenumber = true
o.wrap = false
o.swapfile = false
o.scrolloff = 5

o.laststatus = 3

-- o.keymap = "russian-jcukenwin"
-- o.iminsert = 0
-- o.imsearch = 0

o.clipboard = "unnamedplus"

if vim.fn.has "wsl" == 1 then
  vim.g.clipboard = {
    name = "WslClipboard",
    copy = {
      ["+"] = "win32yank.exe -i --crlf",
      ["*"] = "win32yank.exe -i --crlf",
    },
    paste = {
      ["+"] = "win32yank.exe -o --lf",
      ["*"] = "win32yank.exe -o --lf",
    },
    cache_enabled = 0,
  }
end
