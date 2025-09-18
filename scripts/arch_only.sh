#!/usr/bin/bash

sudo rm /etc/pacman.conf
sudo rm /etc/paru.conf

sudo cp ./Arch/pacman.conf /etc/pacman.conf
sudo cp ./Arch/paru.conf /etc/paru.conf
