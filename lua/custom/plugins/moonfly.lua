return {
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
