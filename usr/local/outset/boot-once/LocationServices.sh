#!/bin/sh

## Version 1.0
## Compiled by Kevin M. Cox

## This script enables macOS Location Services and is intended to run as an Outset boot-once script.
## It requires a restart to take effect.

/usr/bin/defaults write /var/db/locationd/Library/Preferences/ByHost/com.apple.locationd LocationServicesEnabled -int 1
