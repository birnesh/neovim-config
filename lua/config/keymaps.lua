-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set({ "n", "x" }, "<leader>sR", function()
  require("grug-far").open({ prefills = { paths = vim.fn.expand("%:p") } })
end, { desc = "Search and Replace (current file)" })
