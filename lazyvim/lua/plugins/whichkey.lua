return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      plugins = { spelling = true },
      defaults = {
        mode = { "n", "v" },
        ["g"] = { name = "+goto" },
        ["gs"] = { name = "+surround" },
        ["z"] = { name = "+fold" },
        ["]"] = { name = "+next" },
        ["["] = { name = "+prev" },
        ["<leader><tab>"] = { name = "+tabs" },
        ["<leader>b"] = {
          name = "+buffer",
          c = { "<cmd>BufferLinePickClose<cr>", "Pick Close" },
          s = { "<cmd>BufferLinePick<cr>", "Pick" },
          j = { "<C-^><cr>", "Prev Buffer" },
          k = { "<C-^><cr>", "Next Buffer" },
        },
        ["<leader>c"] = {
          name = "+code",
          j = {
            "<cmd>lua vim.diagnostic.goto_next()<cr>",
            "Next Diagnostic",
          },
          k = {
            "<cmd>lua vim.diagnostic.goto_prev()<cr>",
            "Prev Diagnostic",
          },
        },
        ["<leader>f"] = { name = "+file/find" },
        ["<leader>g"] = { name = "+git", D = { "<cmd>:tab Git<cr>", "Open Diff View" } },
        ["<leader>gh"] = { name = "+hunks", ["_"] = "which_key_ignore" },
        ["<leader>q"] = { name = "+quit/session" },
        ["<leader>s"] = {
          name = "+search",
          f = { "<cmd>Telescope live_grep_args<cr>", "Grep With Args" },
        },
        ["<leader>u"] = { name = "+ui" },
        ["<leader>t"] = {
          name = "+terminal",
          b = { "<cmd>:terminal<cr>", "Buffer" },
          n = { "<cmd>lua _NODE_TOGGLE()<cr>", "Node" },
          u = { "<cmd>lua _NCDU_TOGGLE()<cr>", "NCDU" },
          t = { "<cmd>lua _HTOP_TOGGLE()<cr>", "Htop" },
          p = { "<cmd>lua _PYTHON_TOGGLE()<cr>", "Python" },
          f = { "<cmd>ToggleTerm direction=float<cr>", "Float" },
          h = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", "Horizontal" },
          v = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", "Vertical" },
        },
        ["<leader>x"] = { name = "+diagnostics/quickfix" },
      },
    },
  },
}
