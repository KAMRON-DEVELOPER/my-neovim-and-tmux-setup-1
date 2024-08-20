vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.g.background = "light"
vim.opt.mouse = 'a'

vim.opt.swapfile = false

vim.wo.number = true


-- Default keys
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>', { desc = 'save buffer' })
vim.keymap.set('n', '<leader>q', '<cmd>quit<cr>', { desc = 'close buffer' })
vim.keymap.set('n', '<leader>d', 'ggdG', { desc = 'delete all content from the file' })
vim.keymap.set('n', '<leader>a', ':keepjumps normal! ggVG<cr>', { desc = 'Select all text in buffer' })


