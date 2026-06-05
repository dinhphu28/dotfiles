return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        jdtls = {
          root_dir = require("lspconfig.util").root_pattern(
            "settings.gradle",
            "settings.gradle.kts",
            "build.gradle",
            "build.gradle.kts",
            ".git"
          ),
        },
      },
    },
  },
}
