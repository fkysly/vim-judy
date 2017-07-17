syntax enable
syntax on
filetype on
set cul
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
set noswapfile

call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'pangloss/vim-javascript'
Plug 'jiangmiao/auto-pairs'
Plug 'majutsushi/tagbar'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'
Plug 'bling/vim-bufferline'
call plug#end()

let mapleader=','
noremap <leader>q :q<cr>
noremap <leader>w :w<cr>
noremap <C-j> <C-W>j
noremap <C-h> <C-W>h
noremap <C-k> <C-W>k
noremap <C-l> <C-W>l

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

" airline-theme
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'

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

" airline-theme
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'

" gotags & tagbar
let g:tagbar_type_go = {
  \ 'ctagstype' : 'go',
  \ 'kinds'     : [
    \ 'p:package',
    \ 'i:imports:1',
    \ 'c:constants',
    \ 'v:variables',
    \ 't:types',
    \ 'n:interfaces',
    \ 'w:fields',
    \ 'e:embedded',
    \ 'm:methods',
    \ 'r:constructor',
    \ 'f:functions'
    \],
  \ 'sro' : '.',
  \ 'kind2scope' : {
    \ 't' : 'ctype',
    \ 'n' : 'ntype'
    \},
      \ 'scope2kind' : {
    \ 'ctype' : 't',
    \ 'ntype' : 'n'
    \},
  \ 'ctagsbin'  : 'gotags',
  \ 'ctagsargs' : '-sort -silent'
  \}
