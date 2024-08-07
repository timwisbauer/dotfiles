#!/bin/bash

# Move the dock to the right.
defaults write com.apple.dock orientation -string "right"

# Prevent Apple Music from opening when headphones are plugged in.
launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist

# Use dockutil to set up dock order.
dockutil --remove all
dockutil --add /Applications/Microsoft\ Outlook.app --position 2 --no-restart
dockutil --add /Applications/Slack.app --position 3 --no-restart
dockutil --add /Applications/Google\ Chrome.app --position 4 --no-restart
dockutil --add /Applications/Visual\ Studio\ Code.app --position 5 --no-restart
dockutil --add /Applications/iTerm.app --position 6 --no-restart

killall Dock
