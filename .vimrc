""" Key maps
" Leader
let mapleader=","

" Disable arrows
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
" Move between windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
" Esc
inoremap jj <Esc>
vnoremap v <Esc>
" Disable search highlighting
nnoremap <leader><space> :nohlsearch<CR>
" Search for buffers
map <c-b> <c-p><c-f>

""" Colours

" Syntax
syntax enable

""" Spacing and Indentation

" Indentation
filetype plugin indent on
" Visual spaces per tab
set tabstop=2
" Spaces per tab when editing
set softtabstop=2
" Columns when reindenting using << >>
set shiftwidth=2
set smarttab
" Expand tab to spaces
set expandtab
" Better indentation in visual mode
vnoremap > >gv
vnoremap < <gv

""" UI Config

" Show line numbers
set number
" Load indent files language-specific, located at ~/.vim/indent/
filetype indent on
" Auto-complete command menu. Example: :e ~/.vim<TAB>?
set wildmenu
" Avoid unnecessary redraws
set lazyredraw

""" Searching

" Search as characters are entered
set incsearch
" Highlight search matches
set hlsearch

""" ----------------------
""" Plugins
""" ----------------------
call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
Plug 'mxw/vim-jsx'
Plug 'joukevandermaas/vim-ember-hbs'
Plug 'mileszs/ack.vim'
call plug#end()

""" ----------------------
""" Plugins Config
""" ----------------------

""" NERDTree

map <C-n> :NERDTreeToggle<CR>

""" CtrlP
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

""" VIM Airline

" Make it appear all the time
set laststatus=2
" Theme
let g:airline_theme='base16_default'

""" ----------------------
""" General
""" ----------------------
" Backspace config
set backspace=indent,eol,start

