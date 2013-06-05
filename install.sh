#!/bin/bash 
rm -rf ~/.vim
cp -r ../viminfo ~/.vim

rm ~/.vimrc
ln -sn ~/.vim/vimrc ~/.vimrc

