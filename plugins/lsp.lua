return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- Shell Script
        "shellcheck",
        "shfmt",
        "bash-language-server",
      },
    },
  },
}
