-- NETRW & BASIC
vim.cmd("let g:netrw_banner = 0")
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.undofile = true
vim.opt.clipboard = "unnamedplus"
vim.opt.swapfile = false
vim.g.mapleader = " "

-- SEARCH & INDENT
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- STANDARD LIBRARY REFERENCE CONFIG
vim.opt.path:append("./**")
vim.opt.path:append("/usr/include")

-- Keybinds
vim.keymap.set("n", "<C-n>", ":cnext<CR>")
vim.keymap.set("n", "<C-p>", ":cprev<CR>")
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
