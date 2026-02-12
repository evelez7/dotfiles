return {
  { 'nvim-mini/mini.nvim' , version = false },
  {
    'nvim-mini/mini.files',
    config = function()
      local MiniFiles = require('mini.files')
      MiniFiles.setup({
        mappings = {
          go_in = '<CR>',
          go_in_plus = 'L',
          go_out = '-',
          go_out_plus = 'H',
        },
      })
      vim.keymap.set('n', '<leader>ee', '<cmd>lua MiniFiles.open()<CR>', { desc = 'Toggle mini file explorer' })
      vim.keymap.set('n', '<leader>ef', function()
        MiniFiles.open(vim.api.nvim_buf_get_name(0), false)
        MiniFiles.reveal_cwd()
      end, { desc = "Toggle into currently opened file" })
    end
  },
  {
    'nvim-mini/mini.cursorword',
    config = function()
      local MiniCursorWord = require('mini.cursorword')
      MiniCursorWord.setup()
    end
  }
}

