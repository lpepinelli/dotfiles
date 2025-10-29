#!/bin/bash
set -e

echo "Setting up WSL-specific configurations..."

# WSL-specific configurations
echo "export DISPLAY=:0" >> ~/.bashrc
echo "export LIBGL_ALWAYS_INDIRECT=1" >> ~/.bashrc

# Windows interop
echo "alias explorer='explorer.exe'" >> ~/.bashrc
echo "alias cmd='cmd.exe /c'" >> ~/.bashrc
