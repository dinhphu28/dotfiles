-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.mouse = ""

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Disable auto-format
vim.g.autoformat = false

-- Spell checking
vim.opt.spelllang = "en_us"
-- vim.opt.spell = true

-- Disable spotless diagnostics java
vim.lsp.handlers["textDocument/publishDiagnostics"] = function(_, result, ctx, config)
  local client = vim.lsp.get_client_by_id(ctx.client_id)
  if client and client.name == "jdtls" then
    local filtered_diagnostics = {}
    for _, diag in ipairs(result.diagnostics) do
      if not (diag.source and diag.source:lower():find("spotless")) then
        table.insert(filtered_diagnostics, diag)
      end
    end
    result.diagnostics = filtered_diagnostics
  end
  vim.lsp.diagnostic.on_publish_diagnostics(_, result, ctx, config)
end
