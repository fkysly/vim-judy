syntax enable
syntax on
set ruler
set showcmd
set autoindent
set smartindent
set cindent
set tabstop=2
set softtabstop=2
set shiftwidth=4
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
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'udalov/kotlin-vim'

call vundle#end()
filetype on
