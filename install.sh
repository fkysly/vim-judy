#!/bin/bash

echo "installing vim-judy..."

if which apt-get > /dev/null
then
  sudo apt-get install -y ctags build-essential cmake

elif which brew > /dev/null
then
  brew install g++ ctags
fi

mv -f ~/.vim ~/.vim_old > /dev/null 2>&1
mv -f ~/.vimrc ~/.vimrc_old > /dev/null 2>&1

git clone https://github.com/fkysly/vim-judy.git vim-judy
cd vim-judy

cp .vimrc ~

mkdir ~/.vim
cp -R ./colors ~/.vim

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim -c "PlugInstall" -c "q" -c "q"

cd ..
rm -rf ./vim-judy

echo "Done!"
