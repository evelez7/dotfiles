local lsp_status = require("lsp-status")
local cmp_nvim_lsp = require("cmp_nvim_lsp")

lsp_status.config({
  status_symbol = "󰒍 ",
  indicator_errors = "",
  indicator_warnings = "",
  indicator_info = "",
  indicator_hint = "󰌵",
  indicator_ok = "",
})

lsp_status.register_progress()

local lsp_capabilities = cmp_nvim_lsp.default_capabilities()
vim.lsp.config('clangd', {
  cmd = {
    'clangd',
    '--background-index',
    '--clang-tidy',
    '--enable-config',
    '--header-insertion=never',
    '--pch-storage=memory',
    '--malloc-trim',
  },
  root_markers = { {'.clangd', 'build'}, 'compile_commands.json' },
  filetypes = { 'c', 'cpp', 'h', 'hpp', 'cxx' },
  -- lsp-status specifics
  handlers = lsp_status.extensions.clangd.setup(),
    init_options = {
      clangdFileStatus = true
  },
  -- Merge the capabilities from cmp_nvim with others possibly found elsewhere
  capabilities = vim.tbl_extend('keep', lsp_capabilities or {}, lsp_status.capabilities),
  -- Attach lsp_status once clangd runs
  on_attach = function(client, bufnr)
    lsp_status.on_attach(client)
  end,
})

vim.lsp.enable('clangd')

-- Only start clangd when entering a C++ source file
vim.api.nvim_create_autocmd({'BufEnter', 'BufWinEnter'}, {
  pattern = { '*.c', '*.cpp', '*.h', '*.hpp', '*.cc', '*.cxx' },
  callback = function(args)
    vim.lsp.start({
      name = 'clangd',
      cmd = {'clangd'},
      root_dir = vim.fs.root(0, {{'build', '.clangd'}, 'compile_commands.json'})
    })
  end
})

