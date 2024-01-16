local solarized = true
local colorscheme = {}

if solarized then
  colorscheme = {
    'maxmx03/solarized.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      vim.o.background = 'light'
      vim.opt.termguicolors = true
      require('solarized').setup({
        theme = 'neo',
        styles = {
          functions = { bold = true, italic = false }
        },
      })
      vim.cmd.colorscheme 'solarized'
      vim.cmd [[highlight ColorColumn ctermbg=235 guibg=#435156]]
    end,
  }
else
  colorscheme = {
    "water-sucks/darkrose.nvim",
    lazy = false,
    dependencies = { "tjdevries/colorbuddy.vim" },
    priority = 1000,
    config = function()
      vim.opt.termguicolors = true
      vim.cmd.colorscheme("darkrose")
      vim.cmd [[highlight ColorColumn ctermbg=235 guibg=#262626]]
      local Color, colors, Group, groups, styles = require('colorbuddy').setup()

      Color.new("red", "#9E4244")
      Color.new("dark_red", "#6D0011")
      Color.new("light_red", "#F85149")
      Color.new("orange", "#A26B35")
      Color.new("light_orange", "#F0883E")
      Color.new("dark_purple", "#281C2B")
      Color.new("magenta", "#8B2950")
      Color.new("dark_pink", "#B76E79")
      Color.new("pink", "#FF7979")
      Color.new("light_pink", "#F6ACA7")
      Color.new("gray", "#8B8B8B")
      Color.new("bg", "#000000")
      Color.new("bg_float", "#101010")
      Color.new("bg_float_bright", "#121212")
      Color.new("fg", "#C9C1C9")
      Color.new("fg_gutter", "#8A95A2")
      Color.new("fg_dark", "#4D5566")


      Group.new("@neorg.links.file", colors.magenta, colors.none, styles.bold)
    end
  }
end

return colorscheme
