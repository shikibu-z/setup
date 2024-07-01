" Use Vim instead of Vi
set nocompatible

" Put viminfo under .vim
set viminfo+=n~/.vim/viminfo

" Disable swap file
set noswapfile

" Looking
set shortmess+=I
set laststatus=2

" Editor line number
set number
set relativenumber

" Editor line detail
set ruler
set cursorline

" Editor theme and highlight
syntax on
colorscheme slate

" Use mouse
set mouse+=a

" Tab size and smart indent
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
