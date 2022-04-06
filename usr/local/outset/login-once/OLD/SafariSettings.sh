#!/bin/bash

## Version 1.0
## Compiled by Kevin M. Cox

## Sets the initial Safari settings for users the first time they login
## These settings can then be changed by users

# Prevent Safari from opening 'safe' files automatically after downloading

/usr/bin/defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# Show full URL in Safari

/usr/bin/defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true

# Show status bar

/usr/bin/defaults write com.apple.Safari ShowStatusBar -bool true
/usr/bin/defaults write com.apple.Safari ShowStatusBarInFullScreen -bool true

# Set Safari's home page

/usr/bin/defaults write com.apple.Safari HomePage -string "https://www.galvnews.com"

# Set new Safari windows to open to Safari’s default homepage:

/usr/bin/defaults write com.apple.Safari NewWindowBehavior -int 0 

# Set new Safari tabs to open to an empty page:

/usr/bin/defaults write com.apple.Safari NewTabBehavior -int 1
