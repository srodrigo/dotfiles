-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<leader>m", function()
  LazyVim.toggle.maximize()
end, { desc = "Maximize window" })

-- Navigate buffers
vim.keymap.set("n", "<A-l>", ":bnext<CR>", opts)
vim.keymap.set("n", "<A-h>", ":bprevious<CR>", opts)
vim.keymap.set("n", "<A-j>", "<C-^>", opts)
vim.keymap.set("n", "<A-k>", "<C-^>", opts)
-- Paste yanked text without overwriting the system clipboard
vim.keymap.set("v", "p", '"_dP', opts)

vim.keymap.del("n", "<leader>w-")
vim.keymap.del("n", "<leader>w|")
vim.keymap.del("n", "<leader>-")
vim.keymap.del("n", "<leader>|")
vim.keymap.del("n", "<leader>`")
