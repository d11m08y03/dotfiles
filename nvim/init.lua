vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.signcolumn = "yes"

vim.g.mapleader = " "
vim.opt.clipboard = "unnamedplus"

vim.api.nvim_set_keymap("n", "<leader>w", "<cmd>:w<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>q", "<cmd>:q<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>h", "<cmd>:set nohlsearch<CR>", { noremap = true, silent = true })

require("config.lazy")
