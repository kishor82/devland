#!/bin/bash

# Set the Go version you want to install
GO_VERSION="1.26.6"

# Check if Go is already installed
if command -v go &> /dev/null; then
    echo "Go is already installed. Version: $(go version)"
    exit 0
fi

# Download and install Go
echo "Downloading and installing Go..."
wget -q "https://go.dev/dl/go$GO_VERSION.linux-amd64.tar.gz" -O go.tar.gz
sudo tar -C /usr/local -xzf go.tar.gz
rm go.tar.gz

# Set Go environment variables
echo "Setting up Go environment variables..."
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.zshrc
source ~/.zshrc

# Verify Go installation
echo "Verifying Go installation..."
go version

echo "Go installation completed."
