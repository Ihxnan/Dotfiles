#!/usr/bin/bash

sudo apt update -y

sudo add-apt-repository -y ppa:neovim-ppa/unstable

sudo apt upgrade -y
sudo apt update -y

mkdir -p ~/WorkSpace/Algorithm

sudo apt install -y \
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
    g++ \
    gdb \
    clangd \
    nodejs \
    yarnpkg

chsh -s $(which fish)
