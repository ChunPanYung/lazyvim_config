return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = true,
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
}
