return {
  "jose-elias-alvarez/null-ls.nvim",
  config = function()
    require("null-ls").setup {
      sources = {
        require("null-ls").builtins.formatting.black.with({
          extra_args = { "--line-length=80" }
        }),
        require("null-ls").builtins.formatting.prettierd,
        require("null-ls").builtins.formatting.gofumpt,
        require("null-ls").builtins.formatting.goimports_reviser,
        require("null-ls").builtins.formatting.golines,
      }
    }
  end
}
