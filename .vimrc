""" Key maps
" Leader
let mapleader=","

" Move between windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
" Esc
inoremap jj <Esc>
vnoremap jj <Esc>
" Disable search highlighting
nnoremap <leader><space> :nohlsearch<CR>

""" Plugins
call plug#begin()
call plug#end()

""" Colours

" Syntax
syntax enable

""" Spacing

" Visual spaces per tab
set tabstop=4
" Spaces per tab when editing
set softtabstop=4

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
