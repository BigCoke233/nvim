return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "hrsh7th/nvim-cmp",
      "hrsh7th/cmp-nvim-lsp",
      "mason-org/mason.nvim",
    },
    config = function()
	    vim.lsp.enable("gopls")
	    vim.lsp.enable("marksman")

      -- configure LUA lsp
	    vim.lsp.config('lua_ls', {
        settings = {
          Lua = {
            diagnostics = {
              globals = {'vim'}
            }
          }
        }
      })
      vim.lsp.enable("lua_ls")
      -- / configure LUA lsp

      -- configure VUE language server
      local vue_language_server_path = vim.fn.expand '$MASON/packages' .. '/vue-language-server' .. '/node_modules/@vue/language-server'
      local tsserver_filetypes = { 'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue' }
      local vue_plugin = {
        name = '@vue/typescript-plugin',
        location = vue_language_server_path,
        languages = { 'vue' },
        configNamespace = 'typescript',
      }

      local ts_ls_config = {
        init_options = {
          plugins = {
            vue_plugin,
          },
        },
        filetypes = tsserver_filetypes,
      }

      local vue_ls_config = {}

      vim.lsp.config('vue_ls', vue_ls_config)
      vim.lsp.config('ts_ls', ts_ls_config)
      vim.lsp.enable({'ts_ls', 'vue_ls'}) -- If using `ts_ls` replace `vtsls` to `ts_ls`
      -- / configure VUE language server
    end,
  },
}
