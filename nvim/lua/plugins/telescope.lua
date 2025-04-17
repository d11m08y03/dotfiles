return {
 'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<CR>', { noremap = true, silent = true })
		vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', { noremap = true, silent = true })
		vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<CR>', { noremap = true, silent = true })
		vim.api.nvim_set_keymap('n', '<leader>ft', '<cmd>Telescope current_buffer_fuzzy_find <CR>', { noremap = true, silent = true })
	end,
}
