return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "catppuccin-mocha"
    end
  }
}

-- return {
--     "navarasu/onedark.nvim",
--     lazy = false,
--     priority = 1000,
--     config = function()
--     vim.cmd("colorscheme onedark")
 --    end,
-- }
