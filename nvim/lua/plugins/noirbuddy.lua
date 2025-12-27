return {
  {
    'jesseleite/nvim-noirbuddy',
    dependencies = {
      { 'tjdevries/colorbuddy.nvim' }
    },
    lazy = false,
    priority = 1000,
    opts = {
      -- This is essentially a monochromatic theme somewhat inspired by acme/dookie.nvim
      -- Specific highlight tweaks are in config/colorscheme.lua
      colors = {
        background = '#ffffca',
        primary = '#3d3131',
        secondary = '#000000',
        noir_0 = '#000000',
        noir_1 = '#000000',
        noir_2 = '#000000',
        noir_3 = '#000000',
        noir_4 = '#000000',
        noir_5 = '#000000',
        noir_6 = '#000000',
        noir_7 = '#000000',
        noir_8 = '#7aafde', -- Visual, line number, search, substitute, EndOfBuffer
        noir_9 = '#ffffff',
        diff_add = '#000000',
        diff_change = '#737373',
      }
    },
  }
}

