#!/bin/bash

# Define variables
FONT_URL="https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/RobotoMono.zip"
FONT_ZIP="RobotoMono.zip"
FONT_DIR="$HOME/.local/share/fonts"

# Create directory for fonts if it doesn't exist
mkdir -p $FONT_DIR

# Download font file
echo "Downloading font file..."
wget -O $FONT_ZIP $FONT_URL

# Unzip font file
echo "Unzipping font file..."
unzip -o $FONT_ZIP -d $FONT_DIR

# Clean up
rm $FONT_ZIP

echo "Font installation completed."
