return {
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.lsp.enable('clangd')
            vim.lsp.enable('phpactor')
	    vim.lsp.enable('ts_ls')
	    vim.lsp.enable('html')
	    vim.lsp.enable('rust_analyzer')
        end,
    },
}
