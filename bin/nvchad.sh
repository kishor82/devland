#!/bin/bash

# Check if NVIM configuration directory already exists
if [ -d ~/.config/nvim ]; then
    read -p "NVIM configuration directory already exists. Do you want to overwrite it? (y/n): " overwrite
    if [ "$overwrite" != "y" ]; then
        echo "Aborting setup."
        exit 1
    fi
    echo "Removing existing NVIM configuration directory..."
    rm -rf ~/.config/nvim
    rm -rf ~/.local/share/nvim
fi

# Install pre-requisite packages if not already installed
if ! command -v rg &>/dev/null; then
    echo "Installing ripgrep..."
    sudo apt-get install ripgrep
fi

# Clone NVChad configuration from GitHub
git clone https://github.com/kishor82/Custom-NvChad.git ~/.config/nvim --depth 1

# Notify user to run additional commands after setup completes
echo "Setup complete. You may need to run additional commands for NVIM to work properly."
