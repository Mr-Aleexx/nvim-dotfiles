vim.g.mapleader = " "
-- Overrides the nvim base with nvim-tree
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })

-- Isert new line shortcut
vim.keymap.set('n', '<CR>', 'm`o<Esc>``')
vim.keymap.set('n', '<S-CR>', 'm`O<Esc>``')

vim.keymap.set("x", "<leader>p", [["_dP]])

-- Disable persistent highlight 
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
local nvim_tree_width = 30  -- default width

vim.keymap.set("n", "<leader>h", "5<C-w><", { desc = "Decrease window width" })
vim.keymap.set("n", "<leader>l", "5<C-w>>", { desc = "Increase window width" })
