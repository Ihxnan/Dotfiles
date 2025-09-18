#!/usr/bin/bash

sources_config=(
    .config/alacritty/
    .config/fish/
    .config/i3blocks/
    .config/nvim/
    .config/ranger/
    .config/picom.conf
)

target_config=(
    ~/.config/alacritty/
    ~/.config/fish/
    ~/.config/i3blocks/
    ~/.config/nvim/
    ~/.config/ranger/
    ~/.config/picom.conf
)

rm -rf "${target_config[@]}"

cp -r "${sources_config[@]}" ~/.config/
