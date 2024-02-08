#!/bin/bash

# Check if Zsh is already installed
if ! command -v zsh &> /dev/null; then
    # Install Zsh
    echo "Installing Zsh..."
    sudo apt-get update
    sudo apt-get install zsh -y
else
    echo "Zsh is already installed."
fi

# Check if Oh My Zsh is already installed
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    # Install Oh My Zsh
    echo "Installing Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

    # TODO: add script to install plugins here...
else
    echo "Oh My Zsh is already installed."
fi
