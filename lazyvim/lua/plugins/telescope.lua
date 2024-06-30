return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- disable the keymap to grep files
    { "<leader>w", false },
    -- change a keymap
    { "<leader>w", "<cmd>w<cr>", desc = "Save File" },
    { "<leader>,", false },
    {
      "<leader><space>",
      "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>",
      desc = "Switch Buffer",
    },
    { "<leader>-", false },
    { "<leader>`", false },
    { "<leader>|", false },
  },
}
