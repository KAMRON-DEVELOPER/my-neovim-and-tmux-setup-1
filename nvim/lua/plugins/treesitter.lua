return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
  local treesitter = require("nvim-treesitter.configs")

  treesitter.setup({
    highlight = { enable = true, additional_vim_regex_highlighting = false },
    indent = { enable = true },
    autotag = { enable = true },
    auto_install = true,
    ensure_installed = {
      "json",
      "javascript",
      "typescript",
      "tsx",
      "yaml",
      "html",
      "css",
      "markdown",
      "markdown_inline",
      "bash",
      "lua",
      "vim",
      "dockerfile",
      "gitignore",
      "c",
      "rust",
      "python",
    },
    incremental_selection = {
    enable = true,
      keymaps = {
        -- init_selection = "C-c",
        -- node_incremental = "<C-A-x>",
        -- scope_incremental = false,
        -- node_decremental = "<A-z>",
      },
     },
    rainbow = {
      enable = true,
      disable = { "html" },
      extended_mode = false,
      max_file_lines = nil,
    },
    context_commentstring = {
      enable = true,
      enable_autocmd = false,
    },
  })
  end,
}
