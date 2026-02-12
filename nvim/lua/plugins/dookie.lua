-- theme
return {
  "pebeto/dookie.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("dookie")

    local function apply_overrides()
      local grey  = "#808080"
      local green = "#6cc644"
      local red   = "#FF0000"

      vim.api.nvim_set_hl(0, "Comment",     { fg = grey, italic = true })
      vim.api.nvim_set_hl(0, "PmenuSel",    { fg = grey })
      vim.api.nvim_set_hl(0, "DiffAdd",     { fg = green })
      vim.api.nvim_set_hl(0, "DiffDelete",  { fg = red })
      vim.api.nvim_set_hl(0, "Delimiter",   { fg = grey })
      vim.api.nvim_set_hl(0, "LspInlayHint",{ fg = grey })
    end

    apply_overrides()

    vim.api.nvim_create_autocmd("ColorScheme", {
      pattern = "*",
      callback = apply_overrides,
    })
  end,
}

