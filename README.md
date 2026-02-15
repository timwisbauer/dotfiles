# dotfiles

My dotfiles managed with [chezmoi](https://www.chezmoi.io/). Quickstart guide for chezmoi here: https://www.chezmoi.io/quick-start/#start-using-chezmoi-on-your-current-machine

## Fresh Mac Setup

Run these commands on a new Mac to set up your workstation:

### 1. Install Xcode Command Line Tools
```bash
xcode-select --install
```

### 2. Install Homebrew
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 3. Add Brew to PATH
Run the shell commands from the brew install output, or add to your shell config:
- For Intel Macs: `eval "$(/usr/local/bin/brew shellenv)"`
- For Apple Silicon: `eval "$(/opt/homebrew/bin/brew shellenv)"`

### 4. Install Google Chrome
```bash
brew install --cask google-chrome
```

### 5. Apply Chezmoi
```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply timwisbauer
```

## What's Included

This repo configures:

- **Shell**: zsh with Oh My Zsh quickstart kit
- **Terminal**: Wezterm with lazygit integration
- **Editor**: Neovim (AstroNvim distribution)
- **Tools**: mise, fzf, stow, jq, gh, ripgrep, lazygit, eza, tmux
- **macOS**: System preferences, Dock configuration
- **Git**: Global gitconfig with sensible defaults

## Applying Changes

After modifying this repo, apply changes to your machine:
```bash
chezmoi apply
```

To edit configs interactively:
```bash
chezmoi edit <file>
```

## Troubleshooting

### Re-run a script
Scripts prefixed with `run_once_*` only run once. To re-run:
```bash
rm ~/.local/share/chezmoi/.run_once_<script>.sh
chezmoi apply
```

### Add new packages
Edit `.chezmoidata/packages.yaml` to add brew formulas or casks.

### Test changes dry-run
```bash
chezmoi diff
```
