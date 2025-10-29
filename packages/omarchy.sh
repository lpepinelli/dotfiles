#!/bin/bash
set -e

# Core packages
sudo pacman -S --needed \
    tmux lazygit

yay -S --needed \
    brave-bin \
