#!/bin/sh

brew install fzf stow zsh jq gh nvim

brew install --cask font-meslo-lg-nerd-font

QUICKSTART_DIR="${HOME}/.zsh-quickstart-kit"
REPO_URL="https://github.com/unixorn/zsh-quickstart-kit.git"

# Check if the directory exists
if [ ! -d "$QUICKSTART_DIR" ]; then
    echo "Cloning zsh-quickstart-kit..."
    git clone "$REPO_URL" "$QUICKSTART_DIR"
    echo "Cloned zsh-quickstart-kit into $QUICKSTART_DIR"
    # FZF setup for quickstart kit.
    sh "$(brew --prefix fzf)/install" --key-bindings --completion --no-update-rc
else
    echo "zsh-quickstart-kit already exists in $QUICKSTART_DIR"
fi

