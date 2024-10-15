return {
	"ThePrimeagen/harpoon",
	config = function()
		require("harpoon").setup({
			global_settings = {
				save_on_toggle = false,
				save_on_change = true,
			},
		})
		local mark = require("harpoon.mark")
		local ui = require("harpoon.ui")
		vim.keymap.set("n", "<leader>xa", mark.add_file, { desc = "Harpoon add file" })
		vim.keymap.set("n", "<leader>xm", ui.toggle_quick_menu, { desc = "Harpoon menu" })
		vim.keymap.set("n", "<leader>xp", ui.nav_next, { desc = "Harpoon next" })
		vim.keymap.set("n", "<leader>xn", ui.nav_prev, { desc = "Harpoon prev" })
	end,
}
