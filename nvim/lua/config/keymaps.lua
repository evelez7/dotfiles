local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Move down in buffer with cursor centered"})
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Move up in buffer with cursor centered"})

vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

vim.api.nvim_set_keymap('n', '<leader>t', ':ToggleTerm<CR>', opts)
vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', opts)

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Live grep in dir' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'List Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'List help tags' })
vim.keymap.set('n', '<leader>fs', builtin.current_buffer_fuzzy_find, { desc = 'Search buffer' })
vim.api.nvim_set_keymap('n', 'Q', ':Telescope cmdline<CR>', { noremap = true, desc = "Cmdline" })

