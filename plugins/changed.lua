return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      close_if_last_window = true,
    },
    filesystem = {
      filtered_items = {
        never_show = {
          ".git",
        },
      },
    },
  },
  { -- Git Conflict Tool
    "akinsho/git-conflict.nvim",
    version = "*",
    config = true,
  },
  -- add any tools you want to have installed below
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- Shell Script
        "shellcheck",
        "shfmt",
        "bash-language-server",
        -- ansible
        "ansible-language-server",
        "ansible-lint",
        -- python
        "black",
        "ruff",
        "ruff-lsp",
        -- lua
        "lua-language-server",
        "stylua",
        -- JSON
        "json-lsp",
      },
    },
  },
}
