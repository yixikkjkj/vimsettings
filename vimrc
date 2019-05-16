" echom 'Engin Powering Up!'
syntax on
set nu numberwidth=4
set listchars=tab:<-,trail:.
set list
set showcmd
set laststatus=2
set encoding=utf-8
set wildmenu
set autoindent
set smartindent
set noexpandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set showmatch
set nocompatible
set guifont=Source\ Code\ Pro:h14
set helplang=cn
set foldmethod=marker

filetype on
filetype plugin on 

set noeb
set cursorline
" set cursorcolumn
set clipboard+=unnamed
set autoread
set scrolloff=3

call plug#begin('~/.vim/plugged')
Plug 'bling/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'Yggdroot/indentLine'

call plug#end()

colorscheme gruvbox

" key maps {{{
let mapleader = "-"
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>uu viwU
nnoremap <leader>ll viwu
nnoremap <space> za
" }}}
