" @Description : This is my configuration file for Vim.
" @Author      : Junyong Zhao (junyong@seas.upenn.edu)
" @LastEditTime: 2021-07-11 15:10

" Use Vim instead of Vi
set nocompatible

" Looking
set shortmess=atI
set t_Co=256
colorscheme ron
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
