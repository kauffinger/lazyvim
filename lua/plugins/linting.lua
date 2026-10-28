return {
  {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      opts.sources = vim.tbl_filter(function(source)
        return source.name ~= "phpcs"
      end, opts.sources or {})
      table.insert(
        opts.sources,
        nls.builtins.diagnostics.phpstan.with({
          extra_args = { "--memory-limit=2G" },
        })
      )
    end,
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        fish = { "fish" },
        dockerfile = { "hadolint" },
        php = {},
      },
    },
  },
}
