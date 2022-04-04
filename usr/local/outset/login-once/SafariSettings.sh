#!/bin/zsh

## Version 1.1
## Compiled by Kevin M. Cox

## Sets the initial Safari settings for users the first time they login
## These settings can then be changed by users

# Prevent Safari from opening 'safe' files automatically after downloading

/usr/bin/defaults write ~/Library/Containers/com.apple.Safari/Data/Library/Preferences/com.apple.Safari.plist AutoOpenSafeDownloads -bool false

# Show status bar

/usr/bin/defaults write ~/Library/Containers/com.apple.Safari/Data/Library/Preferences/com.apple.Safari.plist ShowStatusBar -bool true
/usr/bin/defaults write ~/Library/Containers/com.apple.Safari/Data/Library/Preferences/com.apple.Safari.plist ShowStatusBarInFullScreen -bool true

# Set Safari's home page

/usr/bin/defaults write ~/Library/Containers/com.apple.Safari/Data/Library/Preferences/com.apple.Safari.plist HomePage -string "https://www.galvnews.com"

# Set new Safari windows to open the Homepage:

/usr/bin/defaults write ~/Library/Containers/com.apple.Safari/Data/Library/Preferences/com.apple.Safari.plist NewWindowBehavior -int 0 

# Set new Safari tabs to open the Start Page:

/usr/bin/defaults write ~/Library/Containers/com.apple.Safari/Data/Library/Preferences/com.apple.Safari.plist NewTabBehavior -int 4
