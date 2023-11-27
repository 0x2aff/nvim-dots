-- Change leader
vim.g.mapleader = " "

-- We disable netrw because we use nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- General
vim.opt.autowrite = true
vim.opt.confirm = true

vim.opt.cursorline = true
vim.opt.clipboard = "unnamedplus"

vim.opt.splitbelow = true
vim.opt.splitright = true

-- Smoothscroll
vim.opt.smoothscroll = true

-- Show relative line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Tabstop settings
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Smart indentation
vim.opt.smartindent = true
