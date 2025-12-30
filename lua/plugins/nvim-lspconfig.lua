return {
  {
    "neovim/nvim-lspconfig",
    dependencies = { "hrsh7th/nvim-cmp", "hrsh7th/cmp-nvim-lsp" },
    config = function()
	    vim.lsp.enable("gopls")
	    vim.lsp.enable("lua_ls")
    end,
  },
}
