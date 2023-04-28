local opts={noremap=true,silent=true}
local vim=vim or {}
local map=vim.api.nvim_set_keymap
-- normal
map("n","ZZ","zz",opts)
map("n","<C-f>","<Cmd>Files<CR>",opts)

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})