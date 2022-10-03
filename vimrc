" @Description : This is my configuration file for Vim.
" @Author      : Junyong Zhao (junyong@arizona.edu)
" @LastEditTime: 2022-09-13 10:56

" Use Vim instead of Vi
set nocompatible

" Put viminfo under .vim
set viminfo+=n~/.vim/viminfo

" Looking
set shortmess+=I
set laststatus=2

" Theme
set term=xterm-256color
set background=dark
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

" Editor line number
set number
set relativenumber

" Editor line detail
set ruler
set cursorline

" Editor Syntax Highlight
syntax on

" Use Mouse
set mouse+=a

" Tab Size and Smart Indent
set expandtab
set tabstop=4
set shiftwidth=4
set smartindent

" Search
set ignorecase
set smartcase
set incsearch
set hlsearch
set showmatch

" Clipboard
set clipboard=unnamedplus

" Key bindings
nmap Q <Nop>
