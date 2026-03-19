return {
	'kristijanhusak/vim-dadbod-ui',
	dependencies = {
		{ 'tpope/vim-dadbod',                     lazy = true },
		{ 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
	},
	cmd = {
		'DBUI',
		'DBUIToggle',
		'DBUIAddConnection',
		'DBUIFindBuffer',
	},
	init = function()
		-- Your DBUI configuration
		vim.g.db_ui_use_nerd_fonts = 1

		-- Keybindings
		vim.keymap.set("n", "<leader>Dt", "<cmd>DBUIToggle<cr>", { desc = "Database UI Toggle" })
		vim.keymap.set("n", "<leader>Df", "<cmd>DBUIFindBuffer<cr>", { desc = "Database UI Find Buffer" })
		vim.keymap.set("n", "<leader>Da", "<cmd>DBUIAddConnection<cr>", { desc = "Database UI Add Connection" })

		-- Optional: Save/Edit queries (These are default but useful to have visible)
		-- Note: These work inside SQL buffers created by Dadbod
		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "sql", "mysql", "plsql" },
			callback = function()
				vim.keymap.set("n", "<leader>W", "<Plug>(DBUI_SaveQuery)", { buffer = true, desc = "Save Query" })
				vim.keymap.set("n", "<leader>E", "<Plug>(DBUI_EditBindParameters)",
					{ buffer = true, desc = "Edit Bind Parameters" })
			end,
		})
	end,
}
