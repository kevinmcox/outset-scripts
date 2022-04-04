#!/bin/zsh

## Version 1.1
## Compiled by Kevin M. Cox

## Sets the initial Mail settings for users the first time they login
## These settings can then be changed by users

# Show duplicate messages

/usr/bin/defaults write ~/Library/Containers/com.apple.mail/Data/Library/Preferences/com.apple.mail.plist _AlwaysShowDuplicates -bool true

# Only take address@example.com when copying email addresses

/usr/bin/defaults write ~/Library/Containers/com.apple.mail/Data/Library/Preferences/com.apple.mail.plist AddressesIncludeNameOnPasteboard -bool false
