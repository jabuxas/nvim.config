local home = os.getenv("HOME")
local colorscheme = {}
local open = io.open

local function read_file(path)
  local file = open(path, "rb")
  if not file then return nil end
  local content = file:read "*l"
  file:close()
  return content
end

local fileContent = read_file(string.format("%s/colorscheme", home));

if fileContent == "white" then
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
elseif fileContent == "red" then
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
      Group.new("@comment", colors.gray, colors.none, styles.italic)
    end
  }
elseif fileContent == "melange" then
  colorscheme = {
    "savq/melange-nvim",
    lazy = false,
    dependencies = { "tjdevries/colorbuddy.vim" },
    priority = 1000,
    config = function()
      vim.opt.termguicolors = true
      vim.o.background = 'light'
      vim.cmd.colorscheme 'melange'
    end,

  }
elseif fileContent == "monochrome" then
  colorscheme = {
    'jesseleite/nvim-noirbuddy',
    dependencies = {
      { 'tjdevries/colorbuddy.nvim' }
    },
    lazy = false,
    priority = 1000,
    opts = {
      colors = {
        secondary = "#CCB901",
        primary = "#ccc04c"
      }
    },
  }
elseif fileContent == "forest" then
  colorscheme = {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    -- Optional; default configuration will be used if setup isn't called.
    config = function()
      vim.o.termguicolors = true
      require("everforest").setup({
        background = "hard",
        italics = true,
        ui_contrast = "high",
        dim_inactive_windows = true,
      })

      vim.cmd.colorscheme("everforest")
    end,
  }
elseif fileContent == "solarized" then
  colorscheme = {
    'maxmx03/solarized.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      vim.o.background = 'dark'
      vim.o.termguicolors = true

      require('solarized').setup({
        enables = {
          bufferline = true,
          cmp = true,
        },
        pallete = "solarized",
        theme = "neo",
        transparent = false,
      })

      vim.cmd.colorscheme 'solarized'
    end,
  }
else
  colorscheme = {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = false,
    dependencies = { "tjdevries/colorbuddy.vim" },
    priority = 1000,
    config = function()
      vim.o.termguicolors = true
      vim.cmd [[colorscheme moonfly]]
      vim.g.moonflyCursorColor = true
      vim.g.moonflyNormalFloat = true
      vim.g.moonflyTransparent = true


      local Color, colors, Group, groups, styles = require('colorbuddy').setup()

      Color.new("yellow", "#e3c78a")
      Color.new("orange", "#de935f")
      Color.new("coral", "#f09479")
      Color.new("orchid", "#e196a2")
      Color.new("lime", "#85dc85")
      Color.new("green", "#8cc85f")
      Color.new("emerald", "#36c692")
      Color.new("blue", "#80a0ff")
      Color.new("sky", "#74b2ff")
      Color.new("turquoise", "#79dac8")
      Color.new("purple", "#ae81ff")
      Color.new("cranberry", "#e65e72")
      Color.new("violet", "#cf87e8")
      Color.new("crimson", "#ff5189")
      Color.new("red", "#ff5454")
      Color.new("spring", "#00875f")
      Color.new("mineral", "#314940")
      Color.new("bay", "#4d5d8d")
      Color.new("grey246", "#949494")

      -- Group.new name fg bg style guisp blend
      Group.new("Function", colors.sky, colors.none, styles.bold)
      Group.new("Comment", colors.grey246, colors.none, styles.italic)
      Group.new("PreProc", colors.cranberry, colors.none, styles.NONE)
      Group.new("Macro", colors.violet, colors.none, styles.italic + styles.bold)
      Group.new("Statement", colors.violet, colors.none, styles.italic + styles.bold)
      Group.new("Boolean", colors.cranberry, colors.none, styles.bold)
      Group.new("HoverBorder", colors.yellow, colors.none, styles.NONE)
      Group.new("StorageClass", colors.coral, colors.none, styles.italic)

      Group.link("Conditional", groups.Statement)
      Group.link("TSComment", groups.Comment)
      Group.link("@comment", groups.Comment)
      Group.link("@lsp.type.comment", groups.Comment)
      Group.link("Repeat", groups.Macro)
    end
  }
end

return colorscheme
