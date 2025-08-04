#!/bin/bash

# 更新
pacman -Syyu

# curl npm nodejs ranger neovim git 
pacman -S curl npm nodejs ranger neovim git

mv alacritty ~/.config/
mv nvim ~/.config/
mv ranger ~/.config/
mv .i3 ~/.config
