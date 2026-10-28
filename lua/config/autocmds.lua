-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("php_iskeyword", { clear = true }),
  pattern = "php",
  callback = function()
    vim.opt_local.iskeyword:append("$")
  end,
})
