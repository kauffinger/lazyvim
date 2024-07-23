-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")

vim.keymap.set("n", "<leader>gd", function()
  Util.float_term(
    { "lazydocker", "-f", Util.get_root() .. "docker-compose.yml" },
    { cwd = Util.get_root(), esc_esc = false }
  )
end, { desc = "LazyDocker (root dir)" })

vim.keymap.set("i", "jj", "<ESC>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>a", "<CMD>:w<CR>", { noremap = true, silent = true, desc = "Save File" })
vim.keymap.set("n", "<leader>q", "<CMD>:q<CR>", { noremap = true, silent = true, desc = "Quit File" })
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)
vim.keymap.set("v", "p", '"_dP', opts)
vim.keymap.set("n", "<A-l>", "<CMD>cnext<CR>", opts)
vim.keymap.set("n", "<A-h>", "<CMD>cprev<CR>", opts)
