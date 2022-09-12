" @Description : This is my configuration file for Vim.
" @Author      : Junyong Zhao (junyong@arizona.edu)
" @LastEditTime: 2022-09-12 15:43

" Use Vim instead of Vi
set nocompatible

" Looking
set shortmess=atI
set t_Co=256
set bg=dark
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox
set number
set ruler
set wrap
set cursorline
set colorcolumn=80

" Editor Syntax Highlight
syntax on

" Use Mouse
set mouse=a

" Tab Size and Smart Indent
set expandtab
set tabstop=4
set shiftwidth=4
set smartindent

" Search Highlight
set hlsearch
set showmatch

" Clipboard
set clipboard=unnamedplus
