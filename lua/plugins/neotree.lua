return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false, -- neo-tree will lazily load itself
	config = function()
		require("neo-tree").setup({
      close_if_last_window = true,
      filesystem = {
        follow_current_file = { enabled = true },
        hijack_netrw_behavior = "open_default",

        filtered_items = {
          visible = true,        -- show hidden files
          hide_dotfiles = false, -- don't hide .*
          hide_gitignored = false,
          never_show = {},       -- keep empty unless you want to force-hide some
        },
	    },
    })

    vim.keymap.set('n', '<leader>e', '<cmd>Neotree toggle left<CR>', { desc = "Toggle Neo-tree" })
	end,
  }
}