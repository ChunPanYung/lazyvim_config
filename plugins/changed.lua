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
}
