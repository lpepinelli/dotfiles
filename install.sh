#!/bin/bash
set -e

# Detect OS
detect_os() {
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        if [[ -f /etc/os-release ]]; then
            . /etc/os-release
            echo "$ID"
        fi
    elif [[ "$OSTYPE" == "msys" ]] || [[ "$OSTYPE" == "cygwin" ]]; then
        echo "windows"
    fi
}

# Main installation
main() {
    OS=$(detect_os)
    echo "Detected OS: $OS"

    # Install packages
    case $OS in
        "ubuntu"|"debian")
            ./packages/ubuntu.sh
            ;;
        "arch")
            ./packages/arch.sh
            ;;
        "omarchy")
            ./packages/omarchy.sh
            ./scripts/setup-omarchy.sh
            ;;
        "windows")
            powershell -ExecutionPolicy Bypass -File ./packages/windows.ps1
            ;;
    esac

    # Stow configurations
    echo "Stowing configurations..."
    stow -t ~/.config .config --adopt

    # Run post-install
    ./scripts/post-install.sh
}

main "$@"
