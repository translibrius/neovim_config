return {
  "nvim-treesitter/nvim-treesitter",
  branch = "master",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
    -- Parsers to install
    ensure_installed = {
      "c",
      "cpp",
      "lua",
      "vim",
      "vimdoc",
      "query",
      "json",
      "bash",
    },

    -- Automatically install missing parsers when entering a buffer
    auto_install = true,

    -- Syntax highlighting via treesitter
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },

    -- Optional: better indentation (sometimes imperfect for C)
    indent = { enable = true },
  })
  end,
}