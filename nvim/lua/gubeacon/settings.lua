-- NETRW & BASIC
vim.cmd("let g:netrw_banner = 0")
vim.cmd("colorscheme default")
vim.opt.nu = true
vim.opt.termguicolors = false
vim.opt.relativenumber = true
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

-- KEYBINDS
vim.keymap.set("n", "<C-n>", ":cnext<CR>")
vim.keymap.set("n", "<C-p>", ":cprev<CR>")
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>ex", vim.cmd.Lex)

vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none", fg = "#ffffff" })
vim.api.nvim_set_hl(0, "Normal", { bg = "none", ctermbg = "none" })
vim.api.nvim_set_hl(0, "NonText", { bg = "none", ctermbg = "none" })
vim.api.nvim_set_hl(0, 'Comment', { ctermfg = 8, italic = true })
