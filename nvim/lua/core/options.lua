vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true
-- disable swap files
vim.cmd [[ set noswapfile ]]
vim.cmd [[ set termguicolors ]]

--Line numbers
--vim.wo.number = true
--vim.wo.relativenumber = true 
--Set Hybrid Line numbers
vim.cmd [[ set number relativenumber ]]
