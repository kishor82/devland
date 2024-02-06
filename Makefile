.PHONY: setup-go
setup-go:
	./bin/go.sh

.PHONY: setup-nvm
setup-nvm:
	./bin/install-nvm.sh

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
setup:
	echo "All the setup here..."
