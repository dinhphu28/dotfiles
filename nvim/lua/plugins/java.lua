-- ~/.config/nvim/lua/plugins/java.lua

return {
  {
    "mfussenegger/nvim-jdtls",
    opts = {
      jdtls = {
        settings = {
          java = {
            compile = {
              nullAnalysis = {
                mode = "automatic",
                nullable = {
                  "org.jspecify.annotations.Nullable",
                },
                nonnull = {
                  "org.jspecify.annotations.NonNull",
                },
                nonnullbydefault = {
                  "org.jspecify.annotations.NullMarked",
                },
                nullunmarked = {
                  "org.jspecify.annotations.NullUnmarked",
                },
              },
            },
          },
        },
      },
    },
  },
}
