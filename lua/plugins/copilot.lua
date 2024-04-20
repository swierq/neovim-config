return {
  {
    "github/copilot.vim",
    --    event = "VeryLazy",
    version = "*",
    config = function()
      vim.keymap.set('i', '<F1>', 'copilot#Accept("<CR>")', { expr = true, silent = true })
      vim.keymap.set('i', '<F2>', 'copilot#Next()', { expr = true, silent = true })
      vim.keymap.set('i', '<F3>', 'copilot#Previous()', { expr = true, silent = true })
    end,
  },
}
