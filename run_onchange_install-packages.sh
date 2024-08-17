#!/bin/sh

brew install iterm2 fzf stow zsh jq gh

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

# Specify the preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/.config/iterm"
# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

