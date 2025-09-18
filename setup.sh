#!/usr/bin/bash

sources_config=(
    .config/alacritty/
    .config/fish/
    .config/i3blocks/
    .config/nvim/
    .config/ranger/
    .config/picom.conf
)

sources_home=(
    .vimrc
    .i3/
)

target_config=(
    ~/.config/alacritty/
    ~/.config/fish/
    ~/.config/i3blocks/
    ~/.config/nvim/
    ~/.config/ranger/
    ~/.config/picom.conf
)

target_home=(
    ~/.vimrc
    ~/.i3/
)

rm -rf "${target_config[@]}"
rm -rf "${target_home[@]}"

cp -r "${sources_config[@]}" ~/.config/
cp -r "${sources_home[@]}" ~/
