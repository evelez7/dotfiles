return {
  'nvim-telescope/telescope.nvim', tag = 'v0.2.0',
  dependencies = { 
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    "nvim-tree/nvim-web-devicons",
    'jonarrien/telescope-cmdline.nvim',
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        mappings = {
          i = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
          },
        },
      },
      extensions = {
        picker = {
          layout_config = {
            width  = 120,
            height = 25,
          }
        },
        -- Adjust your mappings 
        mappings    = {
          complete      = '<Tab>',
          run_selection = '<C-CR>',
          run_input     = '<CR>',
        },
        -- Triggers any shell command using overseer.nvim (`:!`)
        overseer    = {
          enabled = true,
        },
      }
    })
  end
}
