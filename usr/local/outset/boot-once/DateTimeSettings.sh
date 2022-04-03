#!/bin/zsh

## Version 1.1
## by Kevin M. Cox

## Sets the time zone, closest city, NTP server and enables network time syncing

# Set the Time Zone to Central

/usr/sbin/systemsetup -settimezone America/Chicago

# Set the Closest City to Houston, Texas

/usr/bin/defaults write /Library/Preferences/.GlobalPreferences com.apple.TimeZonePref.Last_Selected_City -array "29.7608" "-95.36951" "0" "America/Chicago" "US" "Houston" "U.S.A." "Houston" "U.S.A." "DEPRECATED IN 10.6"

/usr/bin/defaults write /Library/Preferences/.GlobalPreferences com.apple.preferences.timezone.new.selected_city "\032t\020\032u\024\033x\024\034r\020\035w\024\032s\024"

/usr/bin/defaults write /Library/Preferences/.GlobalPreferences com.apple.preferences.timezone.selected_city -dict AppleMapID "\032t\020\032u\024\033x\024\034r\020\035w\024\032s\024"

echo Closest City: Houston, Texas

# Set the Time Server

/usr/sbin/systemsetup -setnetworktimeserver time.apple.com

# Enable NTP syncing

/usr/sbin/systemsetup -setusingnetworktime on
