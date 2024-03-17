#!/bin/bash

# Get the directory of the script
script_dir=$(dirname "$0")

# Define the source and target locations and the file name
source_file="$script_dir/../configs/tmux/tmux.conf"
target_dir="$HOME/.config/tmux"
filename="tmux.conf"

if git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm; then

  # Check if the file exists in the target directory
  if [ ! -f "$target_dir/$filename" ]; then
      # If the file doesn't exist, copy it to the target directory
      cp "$source_file" "$target_dir"
     `` echo "File copied successfully."
  else
      # If the file already exists, print a message
      echo "File '$filename' already exists in the target directory. Skipping copy."
  fi

else
  echo "Git clone failed. Unable to proceed with copy operation."
fi
