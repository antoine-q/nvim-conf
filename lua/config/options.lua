-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--

-- Vérification de l'orthographe
-- vim.opt.spell = true
vim.opt.spelllang = { "fr", "en" }

-- Configuration du presse papier par défaut, ne semble pas nécesaire dans la plupart des cas
vim.opt.clipboard = "unnamedplus"

-- Dans la recherche on ignore la casse en minuscule et on la conserve en majuscule
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.termguicolors = true

-- Afficher correctement les diagnostics
vim.diagnostic.enable = true
vim.diagnostic.config({
  virtual_text = true,
})
