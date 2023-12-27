return {
  {

  "williamboman/mason.nvim",
  config = function()
  require("mason").setup()
  end
  },

  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
    require("mason-lspconfig").setup({

    ensure_installed = {"lua_ls","angularls","clangd","cssls","cssmodules_ls","unocss","dockerls","docker_compose_language_service","html","jsonls","biome","quick_lint_js","tsserver","vtsls","intelephense","sqlls","tailwindcss","volar","vuels"}
      
  })
    end
},
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
     local lspconfig = require("lspconfig")
     lspconfig.lua_ls.setup({})



      vim.keymap.set('n','h', vim.lsp.buf.hover,{})
      vim.keymap.set('n','gd', vim.lsp.buf.definition,{})
      vim.keymap.set({'n','v'},'<leader>ca', vim.lsp.buf.code_action,{})
      vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references, {}) 
    
       end
  }
}
