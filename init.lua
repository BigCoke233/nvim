-- < BASIC TWEAKS > ---

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

-- remove trailing spaces
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  command = [[%s/\s\+$//e]],
})

-- ensure new line at eof
vim.opt.endofline = true
vim.opt.fixendofline = true

-- tab width
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

--- < PLUGINS > ---

require("config.lazy")

--- < THEME > ---

vim.cmd("colorscheme kanagawa-dragon")

