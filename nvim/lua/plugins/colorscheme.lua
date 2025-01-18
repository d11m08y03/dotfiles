return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
			require("tokyonight").setup({
				style = "night",
				transparent = true,
				terminal_colors = true,
				floats = true,
				styles = {
					sidebars = "transparent",
					floats = "transparent",
				},
			})

      vim.cmd([[colorscheme tokyonight]])
    end,
}
