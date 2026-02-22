-- Enable C-specific automatic indenting
vim.opt_local.cindent = true

-- Tab & Spacing (Standard for C)
vim.opt_local.tabstop = 8
vim.opt_local.shiftwidth = 8
vim.opt_local.expandtab = false

-- DOCUMENTATION & REFERENCE (The "No-Tags" Way)
-- K         : Open Linux Man Page for the function under cursor (e.g., printf, malloc)
-- [i        : Show the first line where the word under cursor is defined (Fast!)
-- [d        : Jump to the definition of a #define macro
-- gf        : "Go to File" - Open the header file under the cursor
vim.opt_local.keywordprg = ":Man"

-- NAVIGATION HELPERS
local opts = { buffer = true, silent = true }
-- <leader>h : Switch to header (.h)
-- <leader>c : Switch to source (.c)
vim.keymap.set("n", "<leader>h", ":find %:t:r.h<CR>", opts)
vim.keymap.set("n", "<leader>c", ":find %:t:r.c<CR>", opts)
