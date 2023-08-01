return {
  "folke/zen-mode.nvim",
  opts = {
    tmux = { enabled = true },
    kitty = {
      enabled = true,
      font = "+5",
    }
  },
  config = function()
    vim.keymap.set("n", "<leader>z", "<cmd>ZenMode<CR>", { silent = true })
  end
}
