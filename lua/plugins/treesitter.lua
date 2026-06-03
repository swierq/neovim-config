return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = {
				"go",
				"lua",
				"vim",
				"vimdoc",
				"templ",
				"html",
				"css",
				"terraform",
				"javascript",
				"typescript",
				"tsx",
				"bash",
				"css",
				"templ",
				"dockerfile",
				"make",
				"python",
				"tmux",
				"yaml",
				"json",
				"xml",
				"toml",
				"markdown",
				"markdown_inline",
			},
			auto_install = true,
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
