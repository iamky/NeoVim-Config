return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.tsserver.setup({
        capabilites = capabilities,
      })
      lspconfig.html.setup({
        capabilites = capabilities,
      })
      lspconfig.lua_ls.setup({
        capabilites = capabilities,
      })
      lspconfig.angularls.setup({
        capabilites = capabilities,
      })
      lspconfig.clangd.setup({
        capabilites = capabilities,
      })
      lspconfig.cssls.setup({
        capabilites = capabilities,
      })
      lspconfig.cssmodules_ls.setup({
        capabilites = capabilities,
      })
      lspconfig.jsonls.setup({
        capabilites = capabilities,
      })
      lspconfig.biome.setup({
        capabilites = capabilities,
      })
      lspconfig.quick_lint_js.setup({
        capabilites = capabilities,
      })
      lspconfig.vtsls.setup({
        capabilites = capabilities,
      })
      lspconfig.bashls.setup({
        capabilites = capabilities,
      })
      lspconfig.cmake.setup({
        capabilites = capabilities,
      })
      lspconfig.cobol_ls.setup({
        capabilites = capabilities,
      })
      lspconfig.csharp_ls.setup({
        capabilites = capabilities,
      })
      lspconfig.custom_elements_ls.setup({
        capabilites = capabilities,
      })
      lspconfig.dartls.setup({
        capabilites = capabilities,
      })
      lspconfig.denols.setup({
        capabilites = capabilities,
      })
      lspconfig.diagnosticls.setup({
        capabilites = capabilities,
      })
      lspconfig.dockerls.setup({
        capabilites = capabilities,
      })
      lspconfig.efm.setup({
        capabilites = capabilities,
      })
      lspconfig.eslint.setup({
        capabilites = capabilities,
      })
      lspconfig.fsharp_language_server.setup({
        capabilites = capabilities,
      })
      lspconfig.gopls.setup({
        capabilites = capabilities,
      })
      lspconfig.graphql.setup({
        capabilites = capabilities,
      })
      lspconfig.hls.setup({
        capabilites = capabilities,
      })
      lspconfig.htmx.setup({
        capabilites = capabilities,
      })
      lspconfig.intelephense.setup({
        capabilites = capabilities,
      })
      lspconfig.java_language_server.setup({
        capabilites = capabilities,
      })
      lspconfig.kotlin_language_server.setup({
        capabilites = capabilities,
      })
      lspconfig.luau_lsp.setup({
        capabilites = capabilities,
      })
      lspconfig.opencl_ls.setup({
        capabilites = capabilities,
      })
      lspconfig.postgres_lsp.setup({
        capabilites = capabilities,
      })
      lspconfig.rust_analyzer.setup({
        capabilites = capabilities,
      })
      lspconfig.sourcekit.setup({
        capabilites = capabilities,
      })
      lspconfig.svelte.setup({
        capabilites = capabilities,
      })
      lspconfig.cobol_ls.setup({
        capabilites = capabilities,
      })
      lspconfig.tailwindcss.setup({
        capabilites = capabilities,
      })
      lspconfig.cobol_ls.setup({
        capabilites = capabilities,
      })

      vim.keymap.set("n", "h", vim.lsp.buf.hover, {}) -- h for hover
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {}) --space+gd for definition
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {}) --space+gr for reference
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {}) --space+ca for code actions
    end,
  },
}
