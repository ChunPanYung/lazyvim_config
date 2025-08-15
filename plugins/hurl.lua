return {
  {
    "jellydn/hurl.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    ft = "hurl",
    opts = {
      -- Show response in popup or split
      mode = "split",
      -- Default mappings for the response popup or split views
      mappings = {
        close = "q", -- Close the response popup or split view
        next_panel = "<C-n>", -- Move to the next response popup window
        prev_panel = "<C-p>", -- Move to the previous response popup window
      },
    },
    keys = {
      -- Run API request
      { "<leader>hA", "<cmd>HurlRunner<CR>", desc = "Run All requests" },
      { "<leader>ha", "<cmd>HurlRunnerAt<CR>", desc = "Run Api request" },
      { "<leader>he", "<cmd>HurlRunnerToEntry<CR>", desc = "Run Api request to entry" },
      { "<leader>hE", "<cmd>HurlRunnerToEnd<CR>", desc = "Run Api request from current entry to end" },
      { "<leader>hm", "<cmd>HurlToggleMode<CR>", desc = "Hurl Toggle Mode" },
      { "<leader>hv", "<cmd>HurlVerbose<CR>", desc = "Run Api in verbose mode" },
      { "<leader>hV", "<cmd>HurlVeryVerbose<CR>", desc = "Run Api in very verbose mode" },
      -- Run Hurl request in visual mode
      { "<leader>h", ":HurlRunner<CR>", desc = "Hurl Runner", mode = "v" },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "hurl",
      },
    },
  },
}
