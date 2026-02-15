#!/bin/bash

# Check if dockutil is installed
if ! command -v dockutil &> /dev/null; then
    echo "dockutil not found. Installing via Homebrew..."
    brew install dockutil
fi

# Configure macOS Dock
# This script sets up your Dock with your preferred applications

echo "🚢 Configuring Dock applications..."

# Clear the Dock first (removes all persistent apps)
dockutil --remove all --allhomes

# Add your preferred applications to the Dock in order
# Web Browser
dockutil --add /Applications/Google\ Chrome.app --allhomes

# Development Tools
dockutil --add /Applications/Visual\ Studio\ Code.app --allhomes
dockutil --add /Applications/Wezterm.app --allhomes

# Productivity Apps  
dockutil --add /Applications/Toggl\ Track.app --allhomes
dockutil --add /Applications/Slack.app --allhomes

# Restart Dock to apply changes
killall Dock

echo "✅ Dock configuration completed!"
