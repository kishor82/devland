.PHONY: setup-go
setup-go:
	echo "setting up go environment"

.PHONY: setup-nvm
setup-nvm:
	echo "setting up nvm"

.PHONY: setup-zsh
setup-zsh:
	echo "setting up zsh"

.PHONY: setup-nvchad
setup-nvchad:
	echo "setting up nvchad"

.PHONY: setup-tmux
setup-tmux:
	echo "setting up tmux"

.PHONY: setup-docker
setup-docker:
	./bin/docker.sh

.PHONY: setup-tmuxifier
setup-tmuxifier:
	echo "setup-tmuxifier"

.PHONY: setup-git
setup-git:
	echo "setting up git"

.PHONY: setup
# Install nvm, neovim with custom config directory (install ripgrep), oh-my-sh with plugins, tmux, docker, tmuxifier, git (with ssh config template file)
