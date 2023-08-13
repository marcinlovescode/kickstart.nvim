return {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      require("null-ls").setup({
        sources = {
          require("null-ls").builtins.formatting.prettier, -- markdown formatting
          require("null-ls").builtins.code_actions.eslint_d,
          require("null-ls").builtins.diagnostics.credo,
          require("null-ls").builtins.diagnostics.eslint_d,
          require("null-ls").builtins.diagnostics.gitlint,
          require("null-ls").builtins.diagnostics.golangci_lint,
        }
      })
    end
  }