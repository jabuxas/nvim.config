return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require("bufferline").setup({
      highlights = require("darkrose.integrations.bufferline").generate(),
      options = {
        show_buffer_icons = false,
      }
    })
  end
}
