return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = { 'nvim-tree/nvim-web-devicons', "water-sucks/darkrose.nvim" },
  event = "BufEnter",
  config = function()
    local highlights = {}
    local options = {}

    local home = os.getenv("HOME")
    local open = io.open

    local function read_file(path)
      local file = open(path, "rb")
      if not file then return nil end
      local content = file:read "*l"
      file:close()
      return content
    end

    local fileContent = read_file(string.format("%s/colorscheme", home));
    if fileContent == "red" then
      highlights = require("darkrose.integrations.bufferline").generate()
      options = {
        show_buffer_icons = false,
      }
    else
      options = {
        show_buffer_icons = false,
      }
    end

    require('bufferline').setup({
      highlights = highlights,
      options = options,
    })
  end
}
