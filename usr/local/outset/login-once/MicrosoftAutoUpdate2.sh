#!/bin/bash

## Version 1.0
## By Erik Gomez
## https://gist.github.com/erikng/7cede5be1c0ae2f85435

## Registers the MAU application in the Launch Services database as if the user had opened it manually.
## Needs to be run by every user on the system.
## Should be set in Munki as an update_for the MAU installer.

if [ -e "/Library/Application Support/Microsoft/MAU2.0/Microsoft AutoUpdate.app" ]
    then 
        /System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -R -f -trusted "/Library/Application Support/Microsoft/MAU2.0/Microsoft AutoUpdate.app"
fi

if [ -e "/Library/Application Support/Microsoft/MAU2.0/Microsoft AutoUpdate.app/Contents/MacOS/Microsoft AU Daemon.app" ]
    then 
        /System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -R -f -trusted "/Library/Application Support/Microsoft/MAU2.0/Microsoft AutoUpdate.app/Contents/MacOS/Microsoft AU Daemon.app"
fi
