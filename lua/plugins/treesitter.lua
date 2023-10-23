-- add more treesitter parsers
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "bash",
      "help",
      "html",
      "javascript",
      "json",
      "lua",
      "markdown",
      "markdown_inline",
      "php",
      "python",
      "query",
      "regex",
      "tsx",
      "typescript",
      "vim",
      "yaml",
    },
  },
}
