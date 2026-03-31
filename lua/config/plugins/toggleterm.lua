return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = true,

  vim.keymap.set('n', '<leader>tt', '<cmd>ToggleTerm direction=vertical size=50<CR>', { desc = 'Launch floating terminal' }),
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>h]], { noremap = true }),
}
