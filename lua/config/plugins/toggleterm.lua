return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = true,

  vim.keymap.set('n', '<leader>tt', '<cmd>ToggleTerm direction=vertical size=50<CR>', { desc = 'Launch floating terminal' }),
}
