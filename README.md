# Customized Development Environment Setup

This Makefile automates the setup of a customized development environment, including the installation of the following tools:

- [NVM (Node Version Manager)](https://github.com/nvm-sh/nvm)
- [Neovim](https://neovim.io/) with custom configuration and [ripgrep](https://github.com/BurntSushi/ripgrep)
- [Oh-My-Zsh](https://ohmyz.sh/) with plugins
- [Tmux](https://github.com/tmux/tmux)
- [Docker](https://www.docker.com/)
- [Tmuxifier](https://github.com/jimeh/tmuxifier)
- [Git](https://git-scm.com/) with a custom SSH configuration template file
- [Go](https://go.dev/)

## Prerequisites

- Make sure you have `make` installed on your system.

## Usage

1. Clone this repository:

    ```bash
    git clone https://github.com/kishor82/devland.git
    ```

2. Navigate to the repository directory:

    ```bash
    cd devland
    ```

3. Run the Makefile to set up your development environment:

    ```bash
    make setup
    ```

This will install and configure the specified tools with a single command. Customize the Makefile according to your preferences.

## License

This project is licensed under the [MIT License](LICENSE).
