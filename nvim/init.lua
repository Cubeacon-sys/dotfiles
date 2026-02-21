vim.cmd("let g:netrw_banner = 0")
vim.cmd("set nocompatible")

require("catppuccin").setup({
  flavour = "macchiato", -- latte, frappe, macchiato, mocha
})

vim.cmd.colorscheme("catppuccin-macchiato")

vim.opt.guicursor = ""
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.wrap = true
vim.opt.termguicolors = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.fileencoding = "utf-8"
vim.opt.clipboard = unnamedplus

vim.g.editorconfig = "true"
