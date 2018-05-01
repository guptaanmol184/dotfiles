"     ___                          ___                _                    
"    /   |  ____  ____ ___  ____  / ( )_____   _   __(_)___ ___  __________
"   / /| | / __ \/ __ `__ \/ __ \/ /|// ___/  | | / / / __ `__ \/ ___/ ___/
"  / ___ |/ / / / / / / / / /_/ / /  (__  )   | |/ / / / / / / / /  / /__  
" /_/  |_/_/ /_/_/ /_/ /_/\____/_/  /____/    |___/_/_/ /_/ /_/_/   \___/  
"                                                                         

call plug#begin('~/.config/nvim/plugins')

Plug 'luochen1990/rainbow'          " easier to see nested parens
Plug 'easymotion/vim-easymotion'    " speed navigation in vim

call plug#end()

" plugin options
let g:rainbow_active = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => GENERAL
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number
set history=50

filetype plugin on
filetype indent on

set autoread

let mapleader=" "
let g:mapleader=mapleader

nmap <leader>` :w<cr>
nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>

command W w !sudo tee % > /dev/null

set mouse=a

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM USER INTERFACE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set so=5

set wildmenu
set ruler
set showcmd

set ignorecase
set smartcase
set incsearch
set lazyredraw
set showmatch
set mat=2

set encoding=utf8

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4

set autoindent
set smartindent
set wrap

map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l

set laststatus=2

map 0 ^

" save cursor positon on exit
augroup resCur
  autocmd!
  autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END

set background=dark
