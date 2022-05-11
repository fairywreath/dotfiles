" set compatibility to vim only
set nocompatible

" automatic text wrap
set wrap

" encoding
set encoding=utf-8

" display line numbers
set number

" statusbar
set laststatus=2

syntax on
"colorscheme molokai

" plugins
call plug#begin('~/.vim/plugged')
Plug 'haystackandroid/strawberry'
"Plug 'sts10/vim-pink-moon'
Plug 'Shadorain/shadotheme'
call plug#end()

" for tmux termguicolors not working?
"let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set termguicolors
set t_Co=256
colorscheme strawberry-light
"colorscheme strawberry-dark

"colorscheme pink-moon
"colorscheme xshado
"set background=dark

" tabbing
:set tabstop=4
:set shiftwidth=4
:set expandtab
