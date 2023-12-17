return {
  "nvim-java/nvim-java",
  dependencies = {
    "nvim-java/lua-async-await",
    "nvim-java/nvim-java-core",
    "nvim-java/nvim-java-test",
    "nvim-java/nvim-java-dap",
    "MunifTanjim/nui.nvim",
    "neovim/nvim-lspconfig",
    "mfussenegger/nvim-dap",
    {
      "williamboman/mason.nvim",
      opts = {
        registries = {
          "github:nvim-java/mason-registry",
          "github:mason-org/mason-registry",
        },
      },
    },
    {
      "williamboman/mason-lspconfig.nvim",
      opts = {
        handlers = {
          ["jdtls"] = function()
            require("java").setup()
          end,
        },
      },
    },
  },

  -- config = function()
  --   -- code completion
  --   local capabilities = vim.lsp.protocol.make_client_capabilities()
  --   capabilities.textDocument.completion.completionItem.snippetSupport = true
  --   local cmp_capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)
  --
  --   -- local java_config = require("java").bare_config()
  --
  --   cmp_capabilities.textDocument.foldingRange = {
  --     dynamicRegistration = true,
  --     -- rangeLimit = 10000,
  --     lineFoldingOnly = true,
  --   }
  --
  --   vim.api.nvim_create_autocmd("FileType", {
  --     pattern = { "java" },
  --     callback = function()
  --       -- require("java").initialize_or_attach(java_config)
  --     end,
  --     group = vim.api.nvim_create_augroup("nvim-java", { clear = true }),
  --   })
  -- end,
}
