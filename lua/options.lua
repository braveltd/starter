require "nvchad.options"

local o = vim.o

o.encoding = "utf-8"
o.fileencoding = "utf-8"

o.clipboard = "unnamedplus"
o.cursorlineopt = "both" -- to enable cursorline!
o.relativenumber = true
o.wrap = false
o.swapfile = false
o.scrolloff = 5
o.laststatus = 3

o.termguicolors = true
o.emoji = false
o.textwidth = 0

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
