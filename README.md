# dotfiles

My dotfiles managed with chezmoi.  Quickstart guide for chezmoi here: https://www.chezmoi.io/quick-start/#start-using-chezmoi-on-your-current-machine

## Getting started

### Set up 1Password
- Install `brew install 1password`
- Open the app and sign in
- Set up the CLI integration.  Settings -> Developer -> Integrate with 1Password CLI.

### Apply Chezmoi
Install chezmoi
```
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply timwisbauer
```
