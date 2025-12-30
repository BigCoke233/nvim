-- disable built-in tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- enable true color support
vim.opt.termguicolors = true

-- plugin manaer: lazy.nvim
require("config.lazy")

vim.o.number = true
