" @Description : This is my configuration file for Vim.
" @Author      : Junyong Zhao (junyong@arizona.edu)
" @LastEditTime: 2022-09-13 10:56

" Use Vim instead of Vi
set nocompatible

" Put viminfo under .vim
set viminfo+=n~/.vim/viminfo

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
