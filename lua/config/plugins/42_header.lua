return {
  "Diogo-ss/42-header.nvim",
  cmd = { "Stdheader" },
  keys = { "<F1>" },
  opts = {
    auto_update = true, -- Update header when saving.
    user = "ahazet",
    mail = "alex.hazet@gmail.com",
  },
  config = function(_, opts)
    require("42header").setup(opts)
  end,
}
