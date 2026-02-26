-- NETRW & BASIC
vim.cmd("let g:netrw_banner = 0")
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.undofile = true
vim.opt.clipboard = "unnamedplus"
vim.opt.swapfile = false

-- SEARCH & INDENT
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- COLORSCHEME
require("catppuccin").setup({ flavour = "macchiato" })
vim.cmd.colorscheme("catppuccin-macchiato")

-- STANDARD LIBRARY REFERENCE CONFIG
-- Add recursive project search and system headers to path
-- This allows 'gf' on #include <stdio.h> to work instantly
vim.opt.path:append("./**")
vim.opt.path:append("/usr/include")

-- Quickfix Navigation (for :make or :vimgrep)
-- <C-n> : Next error/match | <C-p> : Previous error/match
vim.keymap.set("n", "<C-n>", ":cnext<CR>")
vim.keymap.set("n", "<C-p>", ":cprev<CR>")
