return {
  {
    "folke/snacks.nvim",
    opts = { explorer = { enabled = false } },
    keys = {
      { "<leader>e", "<cmd>Oil<cr>", desc = "Oil (parent dir)" },
      { "<leader>E", false },
      { "<leader>fe", false },
      { "<leader>fE", false },
    },
  },
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
    opts = {
      default_file_explorer = true,
      view_options = { show_hidden = true },
    },
    keys = {
      { "-", "<cmd>Oil<cr>", desc = "Open parent directory" },
    },
  },
}
