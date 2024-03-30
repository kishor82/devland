#!/bin/bash

# Check the operating system
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    # Debian-based system (like Ubuntu)
    sudo apt update
    sudo apt install tmux -y
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    brew install tmux
else
    echo "Unsupported operating system."
fi

echo "Run tmux with `tmux -u` command."

