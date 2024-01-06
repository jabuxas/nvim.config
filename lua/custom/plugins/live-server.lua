return {
  "aurum77/live-server.nvim",
  opts = {},
  cmd = {
    "LiveServer",
    "LiveServerStart",
    "LiveServerStop",
    "LiveServerInstall",
  },
  build = function()
    require("live_server.util").install()
  end,
}
