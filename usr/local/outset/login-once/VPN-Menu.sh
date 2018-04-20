#!/bin/bash

## Version 1.0
## Compiled by Kevin M. Cox

## Adds the VPN icon to the Menu Bar and sets options for users the first time they login
## These settings can then be changed by users

# VPN Show Time Connected

/usr/bin/defaults write com.apple.networkConnect VPNShowTime -bool true

# VPN Show Status While Connecting

/usr/bin/defaults write com.apple.networkConnect VPNShowStatus -bool true

# Add VPN icon to Menu Bar

/usr/bin/defaults write com.apple.systemuiserver menuExtras -array-add "/System/Library/CoreServices/Menu Extras/VPN.menu"

# Restart the SystemUIServer so the VPN icon shows up right away

killall SystemUIServer -HUP
