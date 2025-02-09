return {
  {
    "github/copilot.vim",
    event = "VeryLazy",
    version = "*",
    config = function()
      vim.g.copilot_no_tab_map = true
      vim.keymap.set(
        "i",
        "<F1>",
        'copilot#Accept("")',
        { expr = true, silent = true, script = true, noremap = true }
      )
      vim.keymap.set("i", "<F2>", "copilot#Next()", { expr = true, silent = true, script = true })
      vim.keymap.set("i", "<F3>", "copilot#Previous()", { expr = true, silent = true, script = true })
    end,
  },
}
