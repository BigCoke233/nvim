return {
  -- Mason (server installer)
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    config = true,
  },

  -- Mason LSP bridge
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "pyright",     -- Python
          "tsserver",    -- JS/TS
          "clangd",      -- C/C++
          "lua_ls",      -- Lua
          "gopls",       -- Go
          "jdtls",       -- Java
        },
      })
    end,
  },

  -- LSP config
  {
    "neovim/nvim-lspconfig",
    dependencies = { "hrsh7th/nvim-cmp", "hrsh7th/cmp-nvim-lsp" },
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Python
      lspconfig.pyright.setup { capabilities = capabilities }

      -- JS/TS
      lspconfig.tsserver.setup { capabilities = capabilities }

      -- C/C++
      lspconfig.clangd.setup { capabilities = capabilities }

      -- Lua
      lspconfig.lua_ls.setup {
        capabilities = capabilities,
        settings = { Lua = { diagnostics = { globals = { "vim" } } } },
      }

      -- Go
      lspconfig.gopls.setup { capabilities = capabilities }

      -- Java
      lspconfig.jdtls.setup { capabilities = capabilities }
    end,
  },
}
