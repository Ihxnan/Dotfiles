#!/usr/bin/bash

sudo pacman -Syyu --noconfirm

sudo pacman -S --noconfirm base-devel

sudo pacman -S --noconfirm \
    neovim \
    curl \
    i3-wm \
    vim \
    alacritty \
    fish \
    i3blocks \
    ranger \
    picom \
    npm \
    gcc \
    gdb \
    clang \
    nodejs

sudo npm install -g yarn

chsh -s $(which fish)
