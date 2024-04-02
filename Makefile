.PHONY: setup-go
setup-go:
	./bin/go.sh

.PHONY: setup-nvm
setup-nvm:
	./bin/install-nvm.sh

.PHONY: setup-zsh
setup-zsh:
	./bin/zsh.sh

.PHONY: setup-neovim
setup-neovim:
	./bin/neovim.sh

.PHONY: setup-nerd-fonts
setup-nerd-fonts:
	./bin/nerd-fonts.sh

.PHONY: setup-nvchad
setup-nvchad: setup-neovim setup-nerd-fonts
	./bin/nvchad.sh

.PHONY: setup-tmux
setup-tmux: setup-tpm setup-tmuxifier
	./bin/tmux.sh 

.PHONY: setup-tpm
setup-tpm:
	./bin/tpm.sh 

.PHONY: setup-tmuxifier
setup-tmuxifier:
	./bin/tmuxifier.sh

.PHONY: setup-docker
setup-docker:
	./bin/docker.sh

.PHONY: setup-ssh-config
setup-ssh-config:
	echo "setting up ssh config"

.PHONY: setup
setup-dev: setup-zsh setup-nvchad setup-tmux setup-nvm setup-go
	echo "setting up devland...💻"
