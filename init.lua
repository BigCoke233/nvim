--- < BASIC TWEAKS > ---

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

-- plugin manaer: lazy.nvim
require("config.lazy")

