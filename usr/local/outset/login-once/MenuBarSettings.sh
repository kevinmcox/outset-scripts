#!/bin/bash

## Version 1.0
## Compiled by Kevin M. Cox

## Sets the initial Menu Bar settings for users the first time they login
## These settings can then be changed by users

# Show Battery percentage

/usr/bin/defaults write com.apple.menuextra.battery ShowPercent -bool true

# Show Day Month Date Time AM/PM in the Menu Clock

/usr/bin/defaults write com.apple.menuextra.clock DateFormat 'EEE MMM d  h:mm a'

# Flash the Menu Clock time separators

/usr/bin/defaults write com.apple.menuextra.clock FlashDateSeparators -bool true

# Show Volume in menu bar

/usr/bin/defaults write com.apple.systemuiserver menuExtras -array-add "/System/Library/CoreServices/Menu Extras/Volume.menu"

# Restart the SystemUIServer so the Volume icon shows up right away

killall SystemUIServer -HUP
