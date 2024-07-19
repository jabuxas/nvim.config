return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")

    local colors = {
      blue = "#268bd2",
      green = "#859900",
      violet = "#6c71c4",
      yellow = "#b58900",
      red = "#dc332f",
      cream = "#fdf6e3",
      black = "#002b36",
      grey = "#073642",
      dark = "#002b36",
    }

    local solarized = {
      normal = {
        a = { bg = colors.dark, fg = colors.cream, gui = "bold" },
        c = { bg = colors.grey, fg = colors.cream, gui = "bold" },
      },
      insert = {
        a = { bg = colors.grey, fg = colors.cream, gui = "bold" },
        c = { bg = colors.black, fg = colors.cream, gui = "bold" },
      },
      visual = {
        a = { bg = colors.violet, fg = colors.black, gui = "bold" },
        c = { bg = colors.dark, fg = colors.cream, gui = "bold" },
      },
      command = {
        a = { bg = colors.green, fg = colors.black, gui = "bold" },
        c = { bg = colors.black, fg = colors.cream, gui = "bold" },
      },
      replace = {
        a = { bg = colors.blue, fg = colors.black, gui = "bold" },
        c = { bg = colors.black, fg = colors.cream, gui = "bold" },
      },
      inactive = {
        a = { bg = colors.green, fg = colors.black, gui = "bold" },
        c = { bg = colors.black, fg = colors.cream, gui = "bold" },
      },
    }

    -- configure lualine with modified theme
    lualine.setup({
      options = {
        theme = solarized,
        component_separators = { left = "", right = "|" },
        section_separators = { left = "", right = "" },
      },
      sections = {
        lualine_a = {
          "mode",
          "branch",
          "diff",
          "diagnostics",
          {
            -- "buffers",
            -- buffers_color = {
            --   active = { bg = colors.yellow, fg = colors.black, gui = "bold" },
            --   inactive = { bg = colors.grey, fg = colors.cream, gui = "italic" },
            -- },
            symbols = {
              modified = " ●",
              alternate_file = " ",
              directory = "",
            },
            mode = 2,
          },
        },
        lualine_b = {},
        lualine_c = {
          {
            "filename",
            file_status = true,
            path = 3,
          },
        },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {
          "searchcount",
          "selectioncount",
          "encoding",
          "fileformat",
          "filetype",
          "progress",
          "location",
        },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = {},
    })
  end,
}


-- config = function()
--   local c = require("darkrose.colors").get()
--   local lualine = require("lualine")
--
--   local bg = c.bg_float_bright
--
--   local conditions = {
--     buffer_not_empty = function()
--       return vim.fn.empty(vim.fn.expand("%:t")) ~= 1
--     end,
--     hide_in_width = function()
--       return vim.fn.winwidth(0) > 80
--     end,
--     check_git_workspace = function()
--       local filepath = vim.fn.expand("%:p:h")
--       local gitdir = vim.fn.finddir(".git", filepath .. ";")
--       return gitdir and #gitdir > 0 and #gitdir < #filepath
--     end,
--   }
--
--   -- Config
--   local config = {
--     options = {
--       -- Disable sections and component separators
--       component_separators = "",
--       section_separators = "",
--       theme = {
--         -- We are going to use lualine_c an lualine_x as the left
--         -- and right sections. Both are highlighted by c theme.
--         normal = { c = { fg = c.fg, bg = bg } },
--         inactive = { c = { fg = c.fg, bg = bg } },
--       },
--     },
--     sections = {
--       -- these are to remove the defaults
--       lualine_a = {},
--       lualine_b = {},
--       lualine_y = {},
--       lualine_z = {},
--       -- These will be filled later
--       lualine_c = {},
--       lualine_x = {},
--     },
--     inactive_sections = {
--       -- these are to remove the defaults
--       lualine_a = {},
--       lualine_b = {},
--       lualine_y = {},
--       lualine_z = {},
--       lualine_c = {},
--       lualine_x = {},
--     },
--   }
--
--   -- Inserts a component in lualine_c at left section
--   local function left(component)
--     table.insert(config.sections.lualine_c, component)
--   end
--
--   -- Inserts a component in lualine_x ot right section
--   local function right(component)
--     table.insert(config.sections.lualine_x, component)
--   end
--
--   left({
--     function()
--       return "▊"
--     end,
--     color = { fg = c.gray },
--     padding = { left = 0, right = 1 },
--   })
--
--   left({
--     function()
--       return ""
--     end,
--     color = function()
--       local mode_color = {
--         n = c.red,         -- Normal
--         i = c.orange,      -- Insert
--         ic = c.orange,     -- Completion insert
--         no = c.red,        -- Operator-pending
--         c = c.dark_pink,   -- Command-line
--         v = c.magenta,     -- Visual
--         V = c.magenta,     -- Line-wise visual
--         [""] = c.magenta, --  Block-wise visual
--         s = c.magenta,     -- Select
--         S = c.magenta,     -- Line-wise visual
--         [""] = c.magenta, -- Block-wise visual
--         R = c.light_pink,  -- Replace
--         Rv = c.light_pink, -- Virtual replace
--         cv = c.dark_pink,  -- Ex
--         r = c.red,         -- Hit-enter
--         rm = c.red,        -- More prompt
--         ["r?"] = c.red,    -- :confirm
--         ["!"] = c.red,     -- Shell command
--         t = c.red,         -- Terminal
--       }
--       return { fg = mode_color[vim.fn.mode()] }
--     end,
--     padding = { right = 1 },
--   })
--
--   left({
--     "filename",
--     cond = conditions.buffer_not_empty,
--     color = { fg = c.dark_pink, gui = "bold" },
--   })
--
--   left({ "location" })
--
--   left({
--     function()
--       local cur = vim.fn.line(".")
--       local total = vim.fn.line("$")
--       return math.floor(cur / total * 100) .. "%%"
--     end,
--     color = { fg = c.fg, gui = "bold" },
--   })
--
--   left({
--     "diagnostics",
--     sources = { "nvim_diagnostic" },
--     symbols = { error = " ", warn = " ", info = " ", hint = " " },
--     diagnostics_color = {
--       error = { fg = c.error },
--       warn = { fg = c.warning },
--       info = { fg = c.info },
--       hint = { fg = c.hint },
--     },
--   })
--
--   right({
--     function()
--       if vim.api.nvim_get_vvar("hlsearch") == 1 then
--         local res = vim.fn.searchcount({ maxcount = 999, timeout = 500 })
--
--         if res.total > 0 then
--           return string.format("%d/%d", res.current, res.total)
--         end
--       end
--
--       return ""
--     end,
--   })
--
--   right({ "filetype" })
--
--   right({
--     "filesize",
--     cond = conditions.buffer_not_empty,
--   })
--
--   right({
--     "o:encoding",
--     fmt = string.upper,
--     cond = conditions.hide_in_width,
--     color = { fg = c.red, gui = "bold" },
--   })
--
--   right({
--     "fileformat",
--     fmt = string.upper,
--     icons_enabled = false,
--     color = { fg = c.red, gui = "bold" },
--   })
--
--   right({
--     "branch",
--     icon = "",
--     color = { fg = c.orange, gui = "bold" },
--   })
--
--   right({
--     "diff",
--     symbols = { added = "+", modified = "~", removed = "-" },
--     diff_color = {
--       added = { fg = c.diff.add },
--       modified = { fg = c.diff.change },
--       removed = { fg = c.diff.delete },
--     },
--     cond = conditions.hide_in_width,
--   })
--
--   right({
--     function()
--       return "▊"
--     end,
--     color = { fg = c.gray },
--     padding = { left = 1 },
--   })
--
--   lualine.setup(config)
-- end,
