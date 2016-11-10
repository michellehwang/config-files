set nocompatible              " be iMproved, required
filetype off                  " required

syntax on
colorscheme gruvbox
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set term=ansi
set number
set bg=dark
au VimLeave * :!clear
set clipboard=unnamed
set scrolloff=5     " Keep at least 5 lines above/below cursor
set mouse=a         " Enable mouse usage in all modes
set mousehide       " Hide the mouse when typing
set showmode        " Show the current mode
