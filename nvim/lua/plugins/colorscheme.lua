return {
    "catppuccin/nvim",
    lazy = false,
    priority = 1000,
    config = function()
			require("catppuccin").setup({
				style = "night",
				transparent_background = true,
				terminal_colors = true,
				floats = true,
				styles = {
					sidebars = "transparent",
					floats = "transparent",
				},
			})

      vim.cmd([[colorscheme catppuccin]])
    end,
}
