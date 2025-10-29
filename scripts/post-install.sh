#!/bin/bash
set -e

echo "Running post-install configuration..."

# Create necessary directories
mkdir -p ~/.config ~/.local/share ~/.local/bin ~/projects

# Set shell
if [[ -n "$SHELL" ]] && [[ "$SHELL" != *"zsh"* ]] && [[ -f /bin/zsh ]]; then
    chsh -s /bin/zsh
fi

# Set git configuration (if not already set)
if ! git config --global user.name &> /dev/null; then
    echo "Please set your git configuration:"
    read -p "Enter your name: " git_name
    read -p "Enter your email: " git_email
    git config --global user.name "$git_name"
    git config --global user.email "$git_email"
fi

echo "Post-install configuration complete!"
