-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
--
--

-- Permet de copier le chemin courant du ficher.
-- Marche pas super bien sur windows
vim.api.nvim_create_user_command("CopyPath", function(context)
  local full_path = vim.fn.glob("%:p")

  local file_path = nil
  if context["args"] == "nameonly" then
    file_path = vim.fn.fnamemodify(full_path, ":t")
  end

  -- get the file path relative to project root
  if context["args"] == "relative" then
    local project_marker = { ".git", "pyproject.toml" }
    local project_root = vim.fs.root(0, project_marker)
    if project_root == nil then
      vim.print("can not find project root")
      return
    end

    file_path = string.gsub(full_path, project_root, "<project-root>")
  end

  if context["args"] == "absolute" then
    file_path = full_path
  end

  vim.fn.setreg("+", file_path)
  vim.print("Filepath copied to clipboard!")
end, {
  bang = false,
  nargs = 1,
  force = true,
  desc = "Copy current file path to clipboard",
  complete = function()
    return { "nameonly", "relative", "absolute" }
  end,
})
