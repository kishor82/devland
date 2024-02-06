#!/bin/bash

# Check if NVM is already installed
if [ -d "$HOME/.nvm" ]; then
    echo "NVM is already installed."
    exit 0
fi

# Uninstall any existing Node.js installations not managed by NVM
echo "Uninstalling existing Node.js installations not managed by NVM..."
sudo apt-get remove --purge nodejs npm -y

# Download and install NVM
echo "Downloading and installing NVM..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

# Source NVM script to make it available in the current shell
source "$HOME/.nvm/nvm.sh"

# Install latest LTS version of Node.js
echo "Installing the latest LTS version of Node.js..."
nvm install --lts

echo "NVM installation completed."
