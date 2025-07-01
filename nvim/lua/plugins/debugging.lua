return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio",
		'leoluz/nvim-dap-go',
		'mfussenegger/nvim-dap-python',
		'julianolf/nvim-dap-lldb',
	},
	config = function()
		require("dapui").setup()
		require("dap-go").setup()
		require("dap-python").setup()

		vim.keymap.set('n', '<Leader>dc', function() require('dap').continue() end)
		vim.keymap.set('n', '<Leader>do', function() require('dap').step_over() end)
		vim.keymap.set('n', '<Leader>di', function() require('dap').step_into() end)
		vim.keymap.set('n', '<Leader>dO', function() require('dap').step_out() end)
		vim.keymap.set('n', '<Leader>db', function() require('dap').toggle_breakpoint() end)
		vim.api.nvim_set_keymap('n', '<leader>dq', '<cmd>DapTerminate<CR>', { noremap = true, silent = true })
		vim.keymap.set({ 'n', 'v' }, '<Leader>dh', function()
			require('dap.ui.widgets').hover()
		end)

		vim.keymap.set('n', '<Leader>du', function() require('dapui').toggle() end)
	end,
}
