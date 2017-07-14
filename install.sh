#!/bin/bash

echo "installing vim-judy..."
mv -f ~/.vim ~/.vim_old > /dev/null 2>&1
mv -f ~/.vimrc ~/.vimrc_old > /dev/null 2>&1

git clone https://github.com/fkysly/vim-judy.git vim-judy
cd vim-judy

cp .vimrc ~

mkdir ~/.vim
cp -R ./plugin ~/.vim
cp -R ./colors ~/.vim

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim -c "PluginInstall" -c "q" -c "q"

cd ..
rm -rf ./vim-judy

echo "Done!"
