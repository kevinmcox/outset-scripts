#!/bin/zsh

## Version 2.1
## Compiled by Kevin M. Cox

## Sets the initial desktop picture for all users at first login
## Should be set in Munki to REQUIRE the custom DesktopPictures.pkg, Outset and Desktoppr

# Wait for the Finder to load before proceeding

while ! /usr/bin/pgrep -xq Finder; do
    echo "Desktoppr is waiting for Finder"
    /bin/sleep 5
done

# Wait another 5 seconds just to make sure the Finder is fully loaded

/bin/sleep 5

# Set the user's desktop picture as The Daily News 175th Anniversary logo

/usr/local/bin/desktoppr "/Library/Desktop Pictures/GalvNews 175 Years.png"
