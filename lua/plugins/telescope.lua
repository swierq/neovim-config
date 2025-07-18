return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find file" })
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Find grep" })
			vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Find buffer" })
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Find help" })
			vim.keymap.set("n", "<leader>fs", builtin.live_grep, { desc = "Find string" })
			vim.keymap.set("n", "<leader>fs", builtin.grep_string, { desc = "Find string under cursor" })
			vim.keymap.set("n", "<leader>ts", builtin.treesitter, { desc = "Treesitter" })
			vim.keymap.set("n", "<leader>cb", builtin.current_buffer_fuzzy_find, { desc = "Fuzzy in current buffer" })
			vim.keymap.set("n", "<leader>gf", builtin.git_files, { desc = "Git files" })
			vim.keymap.set("n", "<leader>gc", builtin.git_commits, { desc = "Git commits" })
			vim.keymap.set("n", "<leader>gb", builtin.git_branches, { desc = "Git branches" })
			vim.keymap.set("n", "<leader>gt", builtin.git_status, { desc = "Git status" })
			vim.keymap.set("n", "<leader>cc", builtin.commands, { desc = "Commands" })
			vim.keymap.set("n", "<leader>fq", builtin.quickfix, { desc = "Commands" })
			vim.keymap.set("n", "<leader>qh", builtin.quickfixhistory, { desc = "Commands" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
