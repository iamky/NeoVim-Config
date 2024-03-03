return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        ensure_installed = {"c","c_sharp","cmake","cpp","css","dart","go","html","java","javascript","json","kotlin","llvm","lua","php","scss","sql","svelte","swift","typescript","vim","vimdoc","query","rust"},
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  }
}
--TSInstall for manual installation
