#!/bin/bash
# TODO: Add this to PATH
LOCAL_BIN_DIR="$HOME/.local/bin"
# Check if Neovim is already installed
if command -v nvim &> /dev/null; then
    echo "Neovim is already installed. Exiting."
    exit 0
fi

# Create directory for fonts if it doesn't exist
mkdir -p $LOCAL_BIN_DIR

# Determine the OS
OS=$(uname -s)

# Install dependencies and extract Neovim on macOS
if [ "$OS" = "Darwin" ]; then
    echo "Installing dependencies and extracting Neovim on macOS..."

    # Install libintl and gettext using Homebrew
    echo "Installing libintl and gettext using Homebrew..."
    brew install gettext

    # Download Neovim macOS tarball
    echo "Downloading Neovim for macOS..."
    curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-macos.tar.gz

    # Run xattr to avoid "unknown developer" warning
    echo "Running xattr to clear extended attributes..."
    xattr -c ./nvim-macos.tar.gz

    # Extract Neovim macOS tarball
    echo "Extracting Neovim for macOS..."I
    tar xzvf nvim-macos.tar.gz -C ~/.local/share/

    cd ~/.local/bin/
    ln -sf ~/.local/share/nvim-macos/bin/nvim nvim

    echo "Neovim installation completed on macOS."

# Extract Neovim on Linux
elif [ "$OS" = "Linux" ]; then
    echo "Extracting Neovim on Linux..."

    # Download Neovim Linux tarball
    echo "Downloading Neovim for Linux..."
    curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz

    # Extract Neovim Linux tarball
    echo "Extracting Neovim for Linux..."
    tar xzvf nvim-linux64.tar.gz -C ~/.local/share/

    cd ~/.local/bin/
    ln -sf ~/.local/share/nvim-linux64/bin/nvim nvim

    echo "Neovim installation completed on Linux."

else
    echo "Unsupported operating system."
    exit 1
fi

# Check if ~/.local/bin is already in PATH
if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
    # Add ~/.local/bin to PATH
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.zshrc
    echo "Added ~/.local/bin to PATH"
else
    echo "~/.local/bin is already in PATH"
fi

