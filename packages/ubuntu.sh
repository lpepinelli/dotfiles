#!/bin/bash
set -e

sudo apt update
sudo apt install -y \
    sway waybar rofi swaylock wlogout \
    grim slurp wl-clipboard dunst stow \
    tmux neovim git curl wget \
    alacritty when-changed xbacklight stow \
	libpango1.0-dev libcairo2-dev

# Add PPA for newer packages if needed
sudo add-apt-repository ppa:aslatter/ppa -y
sudo apt update
