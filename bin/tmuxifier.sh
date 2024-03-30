#!/bin/bash

# Define the shell configuration file
shell_config_file="$HOME/.zshrc"  # Update this based on your shell configuration file


if git clone https://github.com/jimeh/tmuxifier.git ~/.tmuxifier; then

  # Add comment
  echo '# tmuxifier config' >> "$shell_config_file"

  echo 'export EDITOR="nvim"' >> "$shell_config_file"
  echo 'export VISUAL="nvim"' >> "$shell_config_file"

  # Add to PATH 
  echo 'export PATH="$HOME/.tmuxifier/bin:$PATH"' >> "$shell_config_file"

  # Add the line to the shell configuration file
  echo 'eval "$(tmuxifier init -)"' >> "$shell_config_file"

else

  echo "tmuxifier already exist!"

fi


   
