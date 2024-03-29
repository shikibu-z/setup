" Use Vim instead of Vi
set nocompatible

" Put viminfo under .vim
set viminfo+=n~/.vim/viminfo

" Looking
set shortmess+=I
set laststatus=2

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
if system('uname -s')=="Darwin\n"
    set clipboard=unnamed " macOS
else
    set clipboard=unnamedplus " Linux
endif

" Key bindings
nmap Q <Nop>
