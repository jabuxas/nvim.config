return {
  -- "nvim-lualine/lualine.nvim",
  -- dependencies = { "nvim-tree/nvim-web-devicons" },
  -- config = function()
  --   vim.opt.fillchars = {
  --     stl = " ",
  --     stlnc = " ",
  --   }
  --
  --   local lualine = require("lualine")
  --
  --   local colors = {
  --     blue = "#268bd2",
  --     green = "#859900",
  --     violet = "#6c71c4",
  --     yellow = "#b58900",
  --     red = "#dc332f",
  --     cream = "#fdf6e3",
  --     black = "#002b36",
  --     grey = "#073642",
  --     dark = "#002b36",
  --   }
  --
  --   local solarized = {
  --     normal = {
  --       a = { bg = colors.dark, fg = colors.cream, gui = "bold" },
  --       c = { bg = colors.grey, fg = colors.cream, gui = "bold" },
  --     },
  --     insert = {
  --       a = { bg = colors.grey, fg = colors.cream, gui = "bold" },
  --       c = { bg = colors.black, fg = colors.cream, gui = "bold" },
  --     },
  --     visual = {
  --       a = { bg = colors.violet, fg = colors.black, gui = "bold" },
  --       c = { bg = colors.dark, fg = colors.cream, gui = "bold" },
  --     },
  --     command = {
  --       a = { bg = colors.green, fg = colors.black, gui = "bold" },
  --       c = { bg = colors.black, fg = colors.cream, gui = "bold" },
  --     },
  --     replace = {
  --       a = { bg = colors.blue, fg = colors.black, gui = "bold" },
  --       c = { bg = colors.black, fg = colors.cream, gui = "bold" },
  --     },
  --     inactive = {
  --       a = { bg = colors.green, fg = colors.black, gui = "bold" },
  --       c = { bg = colors.black, fg = colors.cream, gui = "bold" },
  --     },
  --   }
  --
  --   -- configure lualine with modified theme
  --   lualine.setup({
  --     options = {
  --       theme = solarized,
  --       component_separators = { left = "", right = "|" },
  --       section_separators = { left = "", right = "" },
  --     },
  --     sections = {
  --       lualine_a = {
  --         "mode",
  --       },
  --       lualine_b = {},
  --       lualine_c = { '%=', { 'filename', file_status = true } },
  --       lualine_x = {},
  --       lualine_y = {},
  --       lualine_z = {
  --         "location",
  --         "progress",
  --       },
  --     },
  --     inactive_sections = {
  --       lualine_a = {},
  --       lualine_b = {},
  --       lualine_c = { "filename" },
  --       lualine_x = { "location" },
  --       lualine_y = {},
  --       lualine_z = {},
  --     },
  --     tabline = {},
  --     winbar = {},
  --     inactive_winbar = {},
  --     extensions = {},
  --   })
  -- end,
}
