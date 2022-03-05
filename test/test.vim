" only load this folder's .vim + vim's default
let &runtimepath="../,./.vim/,".$VIMRUNTIME

call plug#begin('.vim/plugged')
Plug 'sheerun/vim-polyglot'
" Plug 'itchyny/lightline.vim'
call plug#end()

set nocompatible
set termguicolors
set nu rnu
set mouse=a
set cursorline
set noswapfile

syntax on

" setup for lightline
set laststatus=2
" set noshowmode

" enable italics in vim (works by default in nvim)
set t_ZH=[3m
set t_ZR=[23m
let g:bloop_use_italics = 1
let g:bloop_set_background = 0

colors bloop
