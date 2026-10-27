-- plugins/lsp.lua
-- Full LSP stack:
--   mason              → installs LSP server binaries
--   mason-lspconfig    → bridges mason ↔ nvim-lspconfig
--   mason-tool-installer → auto-installs specific servers on startup
--   nvim-lspconfig     → configures each language client

return {
  -- ── Mason: server package manager ──────────────────────────────────────────
  {
    "williamboman/mason.nvim",
    opts = {
      ui = { border = "rounded" },
    },
  },

  -- ── mason-lspconfig: name mapping between mason and lspconfig ───────────────
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {},
  },

  -- ── mason-tool-installer: declarative server auto-install ───────────────────
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    opts = {
      ensure_installed = {
        "clangd",                -- C / C++
      },
      auto_update  = false, -- don't silently update servers on every start
      run_on_start = true,  -- install missing servers on first launch
    },
  },

  -- ── nvim-lspconfig: configures each language client ─────────────────────────
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp", -- needed here so capabilities include completion protocol
    },
    config = function()
      vim.lsp.enable('clangd')
    end,
  },
}
