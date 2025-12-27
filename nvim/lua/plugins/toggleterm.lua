return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    require('toggleterm').setup({
      insert_mappings = true,
      terminal_mappings = true,
    })
  end
}

