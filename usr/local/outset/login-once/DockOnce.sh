#!/bin/bash

## Version 1.1 - High Sierra
## Compiled by Kevin M. Cox

## Uses dockutil to setup the user's dock the first time they login
## Should be set in Munki to REQUIRE outset and dockutil

## Remove unneeded default icons

/usr/local/bin/dockutil --remove 'Siri' --no-restart
/usr/local/bin/dockutil --remove 'Launchpad' --no-restart
/usr/local/bin/dockutil --remove 'Photos' --no-restart
/usr/local/bin/dockutil --remove 'Messages' --no-restart
/usr/local/bin/dockutil --remove 'FaceTime' --no-restart
/usr/local/bin/dockutil --remove 'iTunes' --no-restart
/usr/local/bin/dockutil --remove 'iBooks' --no-restart
/usr/local/bin/dockutil --remove 'App Store'
