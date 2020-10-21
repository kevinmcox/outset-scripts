#!/bin/zsh

## Version 2.0
## Compiled by Kevin M. Cox

## Sets the initial desktop picture for all users at first login
## Should be set in Munki to REQUIRE the custom DesktopPictures.pkg, Outset and Desktoppr

# Set the user's desktop picture as The Daily News 175th Anniversary logo

/usr/local/bin/desktoppr "/Library/Desktop Pictures/GalvNews 175 Years.png"
