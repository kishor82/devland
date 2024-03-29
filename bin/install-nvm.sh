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

echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
echo '[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm' >> ~/.zshrc
echo '[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion' >> ~/.zshrc


echo "NVM installation completed."
