return
{
    {
      'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
    local builtin = require("telescope.builtin")
    vim.keymap.set('n','<C-p>',builtin.find_files, {}) --ctrl+p 
    vim.keymap.set('n','<leader>lg',builtin.live_grep,{}) -- space+lg to live grep 
    end
    },

    {
      "nvim-telescope/telescope-ui-select.nvim",
      config = function()
      require("telescope").setup ({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {}
          }
        }
      })
      require("telescope").load_extension("ui-select")
      end
    }, 


  }
