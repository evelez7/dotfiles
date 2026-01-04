return {
  "esmuellert/vscode-diff.nvim",
  dependencies = { "MunifTanjim/nui.nvim" },
  cmd = "CodeDiff",
  config = function() 
    require("vscode-diff").setup({
      highlights = {
        line_insert = "#15d14d",
        line_delete = "#d11515",
        char_insert = "#15d14d",
        char_delete = "#d11515",
      }
    })
  end
}

