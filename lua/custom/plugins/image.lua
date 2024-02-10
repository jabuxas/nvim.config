laptop = os.getenv("LAPTOP")
if laptop == "yes" then
  return {}
end

return {
  "3rd/image.nvim",
  config = function()
    package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?/init.lua;"
    package.path = package.path .. ";" .. vim.fn.expand("$HOME") .. "/.luarocks/share/lua/5.1/?.lua;"

    require("image").setup({
      backend = "ueberzug",
      tmux_show_only_in_active_indow = true,
    })
  end,
}
