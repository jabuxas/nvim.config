return {
  "mattn/emmet-vim",
  config = function()
    vim.g.user_emmet_leader_key = ","
    vim.g.user_emmet_install_global = 0

    local autocmd = vim.api.nvim_create_autocmd
    autocmd("FileType", { pattern = "html", command = [[EmmetInstall]] })
    autocmd("FileType", { pattern = "css", command = [[EmmetInstall]] })

    vim.keymap.set("n", "<leader>e", function()
      vim.cmd(string.format("Emmet %s", vim.fn.input("Emmet: ")))
    end)
  end
}
