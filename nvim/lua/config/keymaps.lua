local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<C-j>", "<Cmd>normal! <C-d>zz<CR>", { silent = true })
vim.keymap.set("n", "<C-k>", "<Cmd>normal! <C-u>zz<CR>", { silent = true })

vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-N>:FloatermToggle<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>t', ':FloatermToggle<CR>', opts)

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Live grep in dir' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'List Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'List help tags' })
vim.keymap.set('n', '<leader>fs', builtin.current_buffer_fuzzy_find, { desc = 'Search buffer' })
vim.api.nvim_set_keymap('n', 'Q', ':Telescope cmdline<CR>', { noremap = true, desc = "Cmdline" })

-- Harpoon
local harpoon = require("harpoon")
harpoon:setup()

vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<C-a>", function() harpoon:list():remove() end)
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-t>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-n>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-s>", function() harpoon:list():select(4) end)
-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)

