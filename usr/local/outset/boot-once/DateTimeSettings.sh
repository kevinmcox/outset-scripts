#!/bin/bash

## Version 1.0
## Compiled by Kevin M. Cox

## Sets the time zone, closest city, NTP servers and enables network time syncing

# Set the Time Zone to Central

/usr/sbin/systemsetup -settimezone America/Chicago

# Set the Closest City to Houston, Texas

/usr/bin/defaults write /Library/Preferences/.GlobalPreferences com.apple.preferences.timezone.new.selected_city "tuxrws"

echo Closest City: Houston, Texas

# Set the Time Servers (one internal, one external)

/usr/sbin/systemsetup -setnetworktimeserver "time.example.net
server time.apple.com"

# Enable NTP syncing

/usr/sbin/systemsetup -setusingnetworktime on
