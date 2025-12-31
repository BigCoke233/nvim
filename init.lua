--- < BASIC TWEAKS > ---

-- set leader key to space
vim.g.mapleader = " "

-- disable built-in tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- enable true color support
vim.opt.termguicolors = true

-- enable line number
vim.o.number = true

-- show diagnostic
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
})

--- < PLUGINS > ---

require("config.lazy")

