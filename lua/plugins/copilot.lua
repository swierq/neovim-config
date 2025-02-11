return {
	-- {
	--   "github/copilot.vim",
	--   event = "VeryLazy",
	--   version = "*",
	--   config = function()
	--     vim.g.copilot_no_tab_map = true
	--     vim.keymap.set(
	--       "i",
	--       "<F1>",
	--       'copilot#Accept("")',
	--       { expr = true, silent = true, script = true, noremap = true }
	--     )
	--     vim.keymap.set("i", "<F2>", "copilot#Next()", { expr = true, silent = true, script = true })
	--     vim.keymap.set("i", "<F3>", "copilot#Previous()", { expr = true, silent = true, script = true })
	--   end,
	-- },
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		config = function()
			require("copilot").setup({
				panel = {
					enabled = true,
					auto_refresh = false,
					keymap = {
						jump_prev = "[[",
						jump_next = "]]",
						accept = "<CR>",
						refresh = "gr",
						open = "<M-CR>",
					},
					layout = {
						position = "bottom", -- | top | left | right | horizontal | vertical
						ratio = 0.2,
					},
				},
				suggestion = {
					enabled = true,
					auto_trigger = false,
					hide_during_completion = true,
					debounce = 75,
					keymap = {
						accept = "<M-l>",
						accept_word = false,
						accept_line = false,
						next = "<M-]>",
						prev = "<M-[>",
						dismiss = "<C-]>",
					},
				},
				filetypes = {
					yaml = false,
					markdown = false,
					help = false,
					gitcommit = false,
					gitrebase = false,
					hgcommit = false,
					svn = false,
					cvs = false,
					["."] = false,
				},
				copilot_node_command = "node", -- Node.js version must be > 18.x
				server_opts_overrides = {},
			})
		end,
	},
	{
		"zbirenbaum/copilot-cmp",
		after = { "copilot.lua" },
		config = function()
			require("copilot_cmp").setup()
		end,
	},
}
