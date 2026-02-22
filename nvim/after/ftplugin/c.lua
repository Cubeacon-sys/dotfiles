-- Enable C-specific automatic indenting
vim.opt_local.cindent = true

-- Indentation Rules (matches most professional C projects)
vim.opt_local.cinoptions = {
    "g0",  -- Scope declarations (public/private) at 0 indent
    ":0",  -- Switch case labels align with the switch statement
    "(0",  -- Align continuation lines inside parentheses
    "t0",  -- Return type of function at 0 indent (start of line)
    "Ws",  -- Add extra indent for lines starting with an operator
}

-- Tab & Spacing (Standard for large C projects/Glibc)
vim.opt_local.tabstop = 8
vim.opt_local.shiftwidth = 8
vim.opt_local.expandtab = false

-- Triggers for re-indenting while typing
vim.opt_local.cinkeys = "0{,0},0),0],:,0#,!^F,o,O,e"

-- KEYBINDINGS: Built-in Documentation & Completion
-- K        : Open system man page for word under cursor
-- <C-x><C-o>: Trigger ctags-based completion (Omni-complete)
vim.opt_local.keywordprg = ":Man"
vim.opt_local.omnifunc = "ccomplete#Complete"

-- KEYBINDINGS: Navigation Helpers
-- <leader>h : Find and open the header (.h) for current .c file
-- <leader>c : Find and open the source (.c) for current .h file
-- CTRL-]    : Jump to definition (Standard Tag jump)
-- CTRL-t    : Jump back (Standard Tag pop)
-- g]         : Show all matching tags
local opts = { buffer = true, silent = true }
vim.keymap.set("n", "<leader>h", ":find %:t:r.h<CR>", opts)
vim.keymap.set("n", "<leader>c", ":find %:t:r.c<CR>", opts)
