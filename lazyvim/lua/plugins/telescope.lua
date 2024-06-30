return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    {
      "nvim-telescope/telescope-live-grep-args.nvim",
      -- This will not install any breaking changes.
      -- For major updates, this must be adjusted manually.
      version = "^1.0.0",
      config = function()
        LazyVim.on_load("telescope.nvim", function()
          local ok, err = pcall(require("telescope").load_extension, "live_grep_args")
          if not ok then
            LazyVim.error("Failed to load `telescope-live-grep-args.nvim`:\n" .. err)
          end
        end)
      end,
    },
  },
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
    { "<leader>fh", LazyVim.pick("auto", { hidden = true }), desc = "Find Files (Hidden) (Root Dir)" },
    { "<leader>fH", LazyVim.pick("auto", { hidden = true, root = false }), desc = "Find Files (Hidden) (cwd)" },
  },
  opts = {
    defaults = {
      layout_config = { horizontal = { width = 0.95, height = 0.95 } },
    },
  },
}
