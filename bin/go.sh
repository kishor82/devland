#!/bin/bash

# Set the Go version you want to install
GO_VERSION="1.22.0"

# Check if Go is already installed
if command -v go &> /dev/null; then
    echo "Go is already installed. Version: $(go version)"
    exit 0
fi
# Define the download URL
if [[ "$(uname)" == "Linux" ]]; then
    DOWNLOAD_URL="https://go.dev/dl/go$GO_VERSION.linux-amd64.tar.gz"
elif [[ "$(uname)" == "Darwin" ]]; then
    DOWNLOAD_URL="https://go.dev/dl/go$GO_VERSION.darwin-amd64.tar.gz"
else
    echo "Unsupported operating system."
    exit 1
fi

# Print the download URL
echo "Downloading Go from: $DOWNLOAD_URL"

# Download and install Go
echo "Downloading and installing Go..."
wget -q "$DOWNLOAD_URL" -O go.tar.gz
sudo tar -C /usr/local -xzf go.tar.gz
rm go.tar.gz

# Set Go environment variables
echo "Setting up Go environment variables..."
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.zshrc

# Verify Go installation
echo "Verifying Go installation..."
go version

echo "Go installation completed."

echo "RUN 'source ~/.zshrc' to refresh zshrc file with go setup."
