#!/bin/bash
# If LunarVim isn't already installed, install it.
if ! command -v lvim 2>&1 >/dev/null
then
    LV_BRANCH='release-1.4/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.4/neovim-0.9/utils/installer/install.sh)
fi

