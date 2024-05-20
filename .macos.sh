#!/usr/bin/env zsh

### Git setup
git config --global user.name "Michał Jabczyk"
git config --global user.email "13063089+jabczyk@users.noreply.github.com"

### Apps

# Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install apps
brew install --cask brave-browser
brew install --cask arc
brew install --cask spotify
brew install --cask visual-studio-code
brew install --cask karabiner-elements
brew install --cask --no-quarantine middleclick
brew install --cask rectangle
brew install --cask termius
brew install --cask obsidian
brew install --cask dbeaver-community
brew install --cask google-drive
brew install --cask raycast
brew install --cask postman
brew install --cask discord
brew install --cask telegram
brew install --cask steam
brew install --cask macwhisper

brew install stats
brew install mos
brew install node
brew install yarn
brew install orbstack
brew install openjdk
brew install maven

# Install fonts
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono

# Install services
brew install redis
brew services start redis

brew install postgresql@16
brew services start postgresql@16
/opt/homebrew/opt/postgresql@16/bin/createuser -s postgres

### System settings

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# VSCode-Vim key repeat patch
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

# Set a blazingly fast keyboard repeat rate
# defaults write NSGlobalDomain KeyRepeat -int 1
# defaults write NSGlobalDomain InitialKeyRepeat -int 10
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 20

# Finder: show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Finder: show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Speed up Mission Control animations
defaults write com.apple.dock expose-animation-duration -float 0.1

# Remove the auto-hiding Dock delay
defaults write com.apple.dock autohide-delay -float 0
# Remove the animation when hiding/showing the Dock
defaults write com.apple.dock autohide-time-modifier -float 0

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Show App Switcher (Cmd+Tab) on all displays
defaults write com.apple.dock appswitcher-all-displays -bool true
killall Dock

# Disable accented characters popup
defaults write -g ApplePressAndHoldEnabled -bool false
