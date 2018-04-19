#!/bin/bash

## Version 1.0
## Compiled by Kevin M. Cox

## Sets the initial Finder settings for users at first login.
## Executed via Outset login-once.
## These settings can then be changed by users.

# Show Path Bar

/usr/bin/defaults write com.apple.finder ShowPathbar -bool true

# Show Status Bar

/usr/bin/defaults write com.apple.finder ShowStatusBar -bool true

# Show Scroll Bars Always

/usr/bin/defaults write -g AppleShowScrollBars -string "Always"

# Set Default Finder Location to Home Folder

/usr/bin/defaults write com.apple.finder NewWindowTarget -string "PfLo" && \
/usr/bin/defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}"

# Use list view in all Finder windows by default

/usr/bin/defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Use current directory as default search scope in Finder

/usr/bin/defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Expand save panels by default

/usr/bin/defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
/usr/bin/defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Default to local files instead of iCloud

/usr/bin/defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# Enable snap-to-grid for icons on the desktop and in other icon views

/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist

# Disable Photos.app from opening when a device or card is plugged in

/usr/bin/defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

# Disable the "Reopen windows when logging back in" logout checkbox

/usr/bin/defaults write com.apple.loginwindow TALLogoutSavesState -bool false
/usr/bin/defaults write com.apple.loginwindow LoginwindowLaunchesRelaunchApps -bool false

# Prevent Time Machine from prompting to use new hard drives as Backup Volume

/usr/bin/defaults write /Library/Preferences/com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true