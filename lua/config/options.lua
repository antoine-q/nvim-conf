-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
-- vim.opt.spell = true
vim.opt.spelllang = { "fr", "en" }
vim.diagnostic.enable = true
vim.diagnostic.config({
  virtual_text = true,
})
