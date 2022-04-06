#!/bin/bash

## Version 1.0
## Compiled by Kevin M. Cox

## Sets the initial Mail settings for users the first time they login
## These settings can then be changed by users

# Show duplicate messages

/usr/bin/defaults write com.apple.mail _AlwaysShowDuplicates -bool true

# Only take address@example.com when copying email addresses

/usr/bin/defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false
