#!/bin/bash

echo "installing vim-judy..."
mv -f ~/.vim ~/.vim_old > /dev/null 2>&1
mv -f ~/.vimrc ~/.vimrc_old > /dev/null 2>&1

git clone https://github.com/fkysly/vim-judy.git vim-judy
cd vim-judy

cp .vimrc ~

mkdir ~/.vim
cp -R ./colors ~/.vim

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/fatih/vim-go.git ~/.vim/plugged/vim-go

cd ..
rm -rf ./vim-judy

echo "Done!"
