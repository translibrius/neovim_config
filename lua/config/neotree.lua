require("neo-tree").setup({
  close_if_last_window = true,
  filesystem = {
    follow_current_file = { enabled = true },
    hijack_netrw_behavior = "open_default",
  },
})

vim.keymap.set('n', '<leader>e', '<cmd>Neotree toggle left<CR>', { desc = "Toggle Neo-tree" })