return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- Shell Script
        "bashls",
        -- nix language server
        "nil_ls"
      },
    },
  },
}
