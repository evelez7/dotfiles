local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Live grep in dir' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'List Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'List help tags' })
vim.keymap.set('n', '<leader>fs', builtin.current_buffer_fuzzy_find, { desc = 'Search buffer' })

