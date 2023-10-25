return {
  "bluz71/vim-nightfly-colors",
  name = "nightfly",
  lazy = false,
  priority = 1000,
  config = function()
    vim.o.termguicolors = true
    vim.cmd [[colorscheme nightfly]]
    vim.g.nightflyCursorColor = true
    vim.g.nightflyNormalFloat = true
  end
}
