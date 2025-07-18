return {
	"ThePrimeagen/harpoon",
	config = function()
		vim.api.nvim_set_keymap('n', '<leader>hh', '<cmd>:lua require("harpoon.ui").toggle_quick_menu()<CR>',
			{ noremap = true, silent = true })
		vim.api.nvim_set_keymap('n', '<leader>ha', '<cmd>:lua require("harpoon.mark").add_file()<CR>',
			{ noremap = true, silent = true })
	end,
}
