return {
	"cappyzawa/trim.nvim",
	config = function()
		require("trim").setup({
			patterns = {
				[[%s/\(\n\n\)\n\+/\1/]], -- replace multiple blank lines with a single line
			},

			-- if you want to disable trim on write by default
			trim_on_write = true,
			trim_last_line = false,

			-- highlight trailing spaces
			highlight = true,
		})
	end,
}
