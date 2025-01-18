return {
	"echasnovski/mini.animate",
	version = "*",
	config = function()
		require("mini.animate").setup({
			cursor = {
				timing = require("mini.animate").gen_timing.linear({ duration = 60, unit = "total" }),
			},

			scroll = {
				timing = require("mini.animate").gen_timing.linear({ duration = 80, unit = "total" }),
			},
		})
	end,
}
