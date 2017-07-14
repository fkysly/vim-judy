#!/bin/bash

echo "installing vim-judy..."
mv -f ~/.vim ~/.vim_old > /dev/null 2>&1
mv -f ~/.vimrc ~/.vimrc_old > /dev/null 2>&1

git clone https://github.com/fkysly/vim-judy.git ~/vim-judy

rm -rf ~/vim-judy

echo "done."
