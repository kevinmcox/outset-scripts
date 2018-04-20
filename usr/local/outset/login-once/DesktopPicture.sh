#!/bin/bash

## Version 1.0
## Compiled by Kevin M. Cox

## Sets the initial desktop picture for all users at first login
## Should be set in Munki to REQUIRE the custom DesktopPictures.pkg

# Set the user's desktop picture as The Daily News 175th Anniversary logo

osascript -e 'tell application "Finder" to set desktop picture to POSIX file "/Library/Desktop Pictures/GalvNews 175 Years.png"'
