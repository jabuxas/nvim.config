return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('bufferline').setup()
    vim.keymap.set("n", "<A-.>", "<cmd>bnext<CR>", { desc = "Go to next Buffer" })
    vim.keymap.set("n", "<A-,>", "<cmd>bprev<CR>", { desc = "Go to previous Buffer" })
    vim.keymap.set("n", "<A-x>", "<cmd>bdelete<CR>", { desc = "Delete current buffer" })
  end
}
