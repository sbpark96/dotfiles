" Basic settings
set nocompatible
syntax on
filetype plugin indent on

" UI settings
set number
set relativenumber
set showcmd
set cursorline
set wildmenu
set showmatch

" Search settings
set incsearch
set hlsearch
set ignorecase
set smartcase

" Tab settings
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent

" Performance
set lazyredraw

" Backups
set nobackup
set noswapfile

" Color scheme
set background=dark
colorscheme desert

" Key mappings
let mapleader = ","
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader><space> :nohlsearch<CR>

" Navigation
nnoremap j gj
nnoremap k gk
