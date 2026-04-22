-- Remap keys ---------- 

vim.keymap.set("n", "J", "mzJ`z") -- Append line below at the end of the current line

vim.keymap.set("n", "n", "nzzzv") -- Move to next search result and center it
vim.keymap.set("n", "N", "Nzzzv") -- Move to previous search result and center it

vim.keymap.set("i", "jj", "<Esc>") -- use j to esc

-- Copy and Paste  --

vim.keymap.set("x", "<leader>p", "\"_dP") -- Paste without copying the text

vim.keymap.set("n", "xx", "\"_dd") -- Cut line without copying the text
vim.keymap.set("v", "xx", "\"_dd") -- Cut line without copying the text

vim.keymap.set("n", "x", "\"_d") -- Cut without copying the text
vim.keymap.set("v", "x", "\"_d") -- Cut without copying the text

vim.keymap.set("n", "<leader>y", "\"+y") -- Copy to system clipboard
vim.keymap.set("v", "<leader>y", "\"+y") -- Copy to system clipboard

vim.keymap.set("n", "<leader>d", "\"+d") -- Cut to system clipboard
vim.keymap.set("v", "<leader>d", "\"+d") -- Cut to system clipboard

-- Disable arrow keys in normal and visual mode
vim.keymap.set({"n","v"}, '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set({"n","v"}, '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set({"n","v"}, '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set({"n","v"}, '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')


---- Incremental node selection ----

-- Initialize selection with <Enter> (Normal mode)
vim.keymap.set('n', '<CR>', 'van', { remap = true, desc = "Init node selection" })

-- Increment selection with <Enter> (Visual mode)
vim.keymap.set('x', '<CR>', 'an', { remap = true, desc = "Increment node selection" })

-- Decrement selection with <Backspace> (Visual mode)
vim.keymap.set('x', '<BS>', 'in', { remap = true, desc = "Decrement node selection" })

-------------- EXPERIMENTAl (i don't know what are they for) ----------------

-- Diagnostic keymaps
--vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
--vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
-- vim.keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
-- vim.keymap.set("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
-- vim.keymap.set("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
-- vim.keymap.set("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })
