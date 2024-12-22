-- Set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Set if the terminal has a nerd font set up
vim.g.have_nerd_font = true

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true

-- Make line numbers default
vim.opt.number = true

-- Enable mouse mode
vim.opt.mouse = 'a'

-- Sync clipboard between OS and Neovim
vim.opt.clipboard = 'unnamedplus'

-- Enable break indent
vim.opt.breakindent = true

-- Display tabs as n characters
vim.opt.tabstop = 4

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250

-- Set how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Set how neovim will display certain whitespace characters in the editor.
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor
vim.opt.scrolloff = 10

-- Folds
vim.o.foldenable = false
vim.o.foldlevel = 99
vim.o.foldlevelstart = 1
vim.o.foldmethod = 'expr'
-- vim.o.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
