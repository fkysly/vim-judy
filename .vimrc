syntax enable
syntax on
filetype on
set ruler
set showcmd
set autoindent
set smartindent
set cindent
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab
set number
set history=100
set hlsearch
set incsearch
set langmenu=zh_CN.UTF-8
set helplang=cn
set cmdheight=2
set autoread
set autowrite
set mouse=a
set backspace=2
set encoding=utf8
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030
set termencoding=utf-8
set showmatch
set matchtime=1
set noeb
set nocompatible

call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'pangloss/vim-javascript'
Plug 'Raimondi/delimitMate'
Plug 'majutsushi/tagbar'
Plug 'bling/vim-airline'
call plug#end()

let mapleader=','
noremap <leader>q :q<cr>
noremap <leader>w :w<cr>

map <leader><leader> :NERDTreeToggle<CR>

set tags+=/usr/include/tags
set tags+=~/.vim/systags
set tags+=~/.vim/x86_64-linux-gnu-systags

" tagbar
let g:tabbar_width=30
map <leader>t :TagbarToggle<CR>

" solarized
set background=dark
"let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized
