-- leader key
vim.g.mapleader = " "

-- fat cursor
vim.opt.guicursor = ""

-- line numbers
vim.opt.nu = true
vim.opt.rnu = true

-- 4 space indenting
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- line wrap
vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- search highlighting
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.opt.colorcolumn = "80"
vim.opt.updatetime = 50










































