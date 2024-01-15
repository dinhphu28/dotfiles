-- if true then
--   return {}
-- end

return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<CR>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            -- disable enter behavior in cmp
            fallback()
          else
            fallback()
          end
        end, { "i", "s" }),
      })
    end,
  },
}
