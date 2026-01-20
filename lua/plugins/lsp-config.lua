return {
  {
    "mason-org/mason.nvim",
  },
  {
    "mason-org/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "pyright", "intelephense" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        lua_ls = {},
        pyright = {
          settings = {
            python = {
              analysis = {
                extraPaths = { vim.fn.getcwd() },
                venvPath = ".",
                venv = ".venv",
              },
            },
          },
        },
        postgres_lsp = {},
        intelephense = {},
        html = {},
      },
    },
  },
}
