-- disable netrw at the very start of your init.lua (strongly advised)
local vim=vim or {}
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
  auto_close=true,
  git={enable=false},
})