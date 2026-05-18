return {
  {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
      opts.sources = opts.sources or {}
      
      -- Remove phpcs if it was added by LazyVim PHP extra
      opts.sources = vim.tbl_filter(function(source)
        return not (source.name == "phpcs")
      end, opts.sources)
      
      -- Add our custom sources
      table.insert(opts.sources, nls.builtins.diagnostics.phpstan.with({
        extra_args = {
          "--memory-limit=2G",
        },
      }))
      
      return opts
    end,
  },
  {
    -- add longer timeout, since formatting blade files gets a little slow
    -- "neovim/nvim-lspconfig",
    -- opts = {
    --   format = { timeout_ms = 2000 },
    -- },
  },
}
