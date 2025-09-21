#!/usr/bin/bash

mkdir -p ~/WorkSpace/Algorithm

./scripts/arch_only.sh 

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
    nodejs \
    ttf-jetbrains-mono \
    ttf-jetbrains-mono-nerd

sudo npm install -g yarn neofetch

chsh -s $(which fish)

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

bash scripts/setup.sh

sudo reboot
