return {
  {
    "adibhanna/laravel.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
    },
    event = "VeryLazy",
    keys = {
      { "<leader>la", "<cmd>Artisan<cr>", desc = "Laravel Artisan" },
      { "<leader>lr", "<cmd>LaravelRoute<cr>", desc = "Laravel Routes" },
      { "<leader>lm", "<cmd>LaravelMake<cr>", desc = "Laravel Make" },
    },
    opts = {},
  },
}
