-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--

-- Ajouter un raccourci pour quitter plus facilement le mode edition
vim.keymap.set("i", "jk", "<esc>")
vim.keymap.set("v", "jk", "<esc>")
vim.keymap.set("n", "<Leader>ds", vim.diagnostic.open_float, { desc = "Show diagnostic" })
