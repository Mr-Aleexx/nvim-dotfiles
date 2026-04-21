return {
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = false,
    priority = 1000,
    config = function()
      vim.opt.termguicolors = true

      -- optional settings BEFORE colorscheme
      vim.g.moonflyItalics = false
      vim.g.moonflyTransparent = true

      vim.cmd("colorscheme moonfly")
    end,
  }
}
