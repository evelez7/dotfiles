return {
  "nvim-lualine/lualine.nvim",
  dependencies = { 
    "nvim-tree/nvim-web-devicons",
    "nvim-lua/lsp-status.nvim",
  },
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status") -- to configure lazy pending updates count

    local mode = {
        'mode',
        fmt = function(str)
            -- return ' ' 
            -- displays only the first character of the mode
            return ' ' .. str
        end,
    }

    local diff = {
        'diff',
        colored = true,
        symbols = { added = ' ', modified = ' ', removed = ' ' }, -- changes diff symbols
        -- cond = hide_in_width,
    }

    local filename = {
        'filename',
        file_status = true,
        path = 0,
    }

    local branch = {'branch', icon = {'', color={fg='#A6D4DE'}}, '|'}
    local noirbuddy_lualine = require('noirbuddy.plugins.lualine')
    lualine.setup({
      theme = noirbuddy_lualine.theme,
      icons_enabled = true,
      options = {
        component_separators = { left = "|", right = "|" },
        section_separators = { left = "|", right = "" },
      },
      sections = noirbuddy_lualine.sections,
      inactive_sections = noirbuddy_lualine.inactive_settings,
      sections = {
        lualine_a = { mode },
        lualine_b = { branch },
        lualine_c = { diff, filename,
          function()
            return require("lsp-status").status()
          end,
        },
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = "#ff9e64" },
          },
          { "filetype" },
        },
      },
    })
	end,
}
