#!/bin/bash
set -e

# Core packages
sudo pacman -Syu --needed
sudo pacman -S --needed \
    alacritty waybar rofi sway swaylock wlogout \
    grim slurp wl-clipboard dunst stow \
    tmux neovim git curl wget \
    hyprland hyprlock hyprpaper hypridle \
    nvidia-utils egl-wayland base-devel fastfetch \
	zsh ttf-font-awesome

# AUR packages (if yay is installed)
if command -v yay &> /dev/null; then
    yay -S --needed \
        catppuccin-gtk-theme-mocha \
        1password
fi
