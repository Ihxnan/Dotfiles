#!/usr/bin/bash

rm -rf alacritty fish .i3 i3blocks nvim ranger .vimrc

cp -r ~/.config/alacritty/ .
cp -r ~/.config/fish/ .
cp -r ~/.config/i3blocks/ .
cp -r ~/.config/nvim/ .
cp -r ~/.config/ranger/ .
cp -r ~/.i3/ .
cp -r ~/.vimrc .

