return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function()
    local nls = require("null-ls")
    return {
      sources = {
        nls.builtins.formatting.blade_formatter,
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
        nls.builtins.formatting.rustywind.with({
          extra_filetypes = { "php" },
        }),
        nls.builtins.formatting.pint,
        nls.builtins.diagnostics.hadolint,
      },
    }
  end,
}
