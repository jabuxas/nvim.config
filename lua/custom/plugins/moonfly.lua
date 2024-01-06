return {
  "bluz71/vim-moonfly-colors",
  name = "moonfly",
  lazy = false,
  priority = 1000,
  config = function()
    vim.o.termguicolors = true
    vim.cmd [[colorscheme moonfly]]
    vim.g.moonflyCursorColor = true
    vim.g.moonflyNormalFloat = true
    vim.g.moonflyTransparent = true
  end
}
