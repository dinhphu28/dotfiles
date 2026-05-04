return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        clojure_lsp = {
          cmd = { "clojure-lsp" },
        },
      },
    },
  },
}
