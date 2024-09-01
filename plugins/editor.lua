return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = false,
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
