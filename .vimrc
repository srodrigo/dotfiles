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

""" ----------------------
""" Plugins
""" ----------------------
call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
call plug#end()

""" ----------------------
""" Plugins Config
""" ----------------------

""" NERDTree

map <C-n> :NERDTreeToggle<CR>

""" VIM Airline

" Make it appear all the time
set laststatus=2
" Theme
let g:airline_theme='papercolor'
