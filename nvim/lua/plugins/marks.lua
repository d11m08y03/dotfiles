return {
	"chentoast/marks.nvim",
	event = "VeryLazy",
	config = function()
		require 'marks'.setup {
			default_mappings = false,
			mappings = {
				next_bookmark = "<leader>mn",
				prev_bookmark = "<leader>mp"
			}
		}
	end
}
