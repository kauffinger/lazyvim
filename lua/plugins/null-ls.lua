return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function()
    local nls = require("null-ls")
    return {
      sources = {
        nls.builtins.diagnostics.eslint_d.with({
          condition = function(utils)
            return utils.root_has_file({ ".eslintrc.json" })
          end,
        }),
        nls.builtins.diagnostics.trail_space.with({ disabled_filetypes = { "NvimTree" } }),
        nls.builtins.formatting.eslint_d.with({
          condition = function(utils)
            return utils.root_has_file({ ".eslintrc.json" })
          end,
        }),
        nls.builtins.formatting.prettierd,
      },
    }
  end,
}
