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
    # Install Powerline fonts
    git clone https://github.com/powerline/fonts.git

    cd fonts

    ./install.sh

    # Add Syntax Highlighting plugin
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

    # Add ZSH-AutoSuggestion Plugin
    git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

    # Hide computer name in terminal

    echo "export DEFAULT_USER=$USER" >> ~/.zshrc

else
    echo "Oh My Zsh is already installed."
fi
