" Vimrc file for use with linux / chromebook
source $VIMRUNTIME/mswin.vim

set lines=52 columns=120
set textwidth=80
set colorcolumn=81

syntax on
set guioptions -=m "turn off main tool bar (gvim)
set guioptions -=T  "turn off tab bar (gvim)
set autochdir
set hlsearch
set backspace=indent,eol,start
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set relativenumber
set nowrap
set smartcase
set noswapfile
set nobackup
set incsearch
set ignorecase
set encoding=utf-8
set fileencoding=utf-8

"set guifont=Consolas:h13
set background=dark
" Here is where my rempas will go
imap jk <Esc>
imap kj <Esc>

" Here is where my leader key will go, and then the leader key remaps
let mapleader = " " " map leader to Space
set timeoutlen=800 " Set timeout length to 500 ms

" Plugin Manager Plugged

call plug#begin()

Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'valloric/youcompleteme'

call plug#end()

colorscheme gruvbox  "Must come after plug install

" Change window
nnoremap <leader>w <c-w>
" Del word in insert mode (inoremap = insert, not recursive)
noremap! <C-BS> <C-w>
noremap! <C-h> <C-w>
" highlights off
map <leader>h :noh<CR>
" space + s to check spelling
map <leader>s :set spell!<CR>
" fix (replace word with first sugguestion)
map <leader>f 1z=
" toggle nerdtree
map <leader>t :NERDTreeToggle<CR>
" Run python Script in term
nnoremap <leader>` :w<CR>:!python3 %<CR>
