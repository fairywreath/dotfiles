" set compatibility to vim only
set nocompatible

" automatic text wrap
set wrap

" leaderkey
let mapleader = " "

" encoding
set encoding=utf-8

" statusbar
set laststatus=2

set relativenumber

"backup settings
set backupdir=/tmp
set directory=~/.vim/tmp,.
set backup

" tabbing
:set tabstop=4
:set shiftwidth=4
:set expandtab

"stop autocommmenting on new line
set formatoptions-=cro

"split settings
set splitbelow splitright

"persistent undo
set undofile

"cursor column for tab/spacing-based languages
autocmd Filetype python set cursorcolumn
autocmd Filetype verilog set cursorcolumn

"searching
set ignorecase
set smartcase
set incsearch

"keybindings
"open term
nnoremap <leader>t :term<CR>
"spelling?
nnoremap <leader>s :setlocal spell!<CR>

"clipboard
nnoremap <leader>y "*y
nnoremap <leader>p "*p
nnoremap <leader>d "*d

"insert escape
inoremap aa  <Esc>

" plugins
call plug#begin('~/.vim/plugged')
Plug 'haystackandroid/strawberry'
Plug 'sts10/vim-pink-moon'
Plug 'Shadorain/shadotheme'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'flazz/vim-colorschemes'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'machakann/vim-highlightedyank'
Plug 'scrooloose/nerdtree'
call plug#end()

" for tmux termguicolors not working?
"let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set termguicolors
set t_Co=256
colorscheme fairyfloss

