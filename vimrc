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
nnoremap <leader>e :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
"spelling?
nnoremap <leader>s :setlocal spell!<CR>

"clipboard
nnoremap <leader>y "*y
nnoremap <leader>p "*p
nnoremap <leader>d "*d

"insert escape
"inoremap aa  <Esc>

" better buffer navigation
map <S-l> :bnext<CR>
map <S-h> :bprev<CR>

" better window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" plugins
call plug#begin('~/.vim/plugged')
"  Plug 'haystackandroid/strawberry'
Plug 'sts10/vim-pink-moon'
" Plug 'Shadorain/shadotheme'
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'flazz/vim-colorschemes'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'machakann/vim-highlightedyank'
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'

Plug 'ghifarit53/tokyonight-vim'
Plug 'haishanh/night-owl.vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" for tmux termguicolors not working?
"let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set termguicolors
set t_Co=256
colorscheme pink-moon

" remove trailing whitespace
set wrap
set linebreak
" note trailing space at end of next line
set showbreak=>\ \ \
autocmd BufWritePre * :%s/\s\+$//e

" vim-ariline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='night_owl'
