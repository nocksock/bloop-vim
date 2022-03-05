" only load this folder's .vim + vim's default
let &runtimepath="../,./.vim/,".$VIMRUNTIME
let &packpath="./.vim" " load polyglot as a theming baseline
set nocompatible

set termguicolors
set nu rnu
set mouse=a
set cursorline

syntax on

let g:bloop_set_background = 0
let g:bloop_use_italics = 0

colors bloop
