-- NETRW & BASIC
vim.cmd("let g:netrw_banner = 0")
vim.opt.guicursor = ""
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.fileencoding = "utf-8"
vim.opt.clipboard = "unnamedplus"

-- SEARCH & INDENT
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.wrap = true

-- COLORSCHEME
require("catppuccin").setup({ flavour = "macchiato" })
vim.cmd.colorscheme("catppuccin-macchiato")

-- VANILLA C DEVELOPMENT (No-LSP)
-- Add current dir and system headers to path for :find and gf
vim.opt.path:append("./**")
vim.opt.path:append("/usr/include")

-- Ctags: looks for 'tags' file in current dir, then parent dirs upward
vim.opt.tags = "./tags;,tags;"

-- KEYBINDINGS: Quickfix Navigation (for :make or :vimgrep results)
-- <C-n> : Go to next error/match
-- <C-p> : Go to previous error/match
vim.keymap.set("n", "<C-n>", ":cnext<CR>", { desc = "Next Quickfix item" })
vim.keymap.set("n", "<C-p>", ":cprev<CR>", { desc = "Previous Quickfix item" })

vim.api.nvim_create_user_command('Ctags', function()
    -- We use 'generate_tags.sh' directly since it's in your PATH
    local output = vim.fn.system('generate_tags.sh')
    
    -- Check for errors (exit code non-zero)
    if vim.v.shell_error ~= 0 then
        print("Error updating ctags: " .. output)
    else
        print("Ctags updated successfully!")
    end
end, {})
vim.g.editorconfig = "true"
