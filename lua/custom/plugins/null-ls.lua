return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = {
    sources = {
      require("null-ls").builtins.formatting.black.with({
        extra_args = { "--line-length=80" }
      }),
      require("null-ls").builtins.formatting.prettierd
    }
  }
}
