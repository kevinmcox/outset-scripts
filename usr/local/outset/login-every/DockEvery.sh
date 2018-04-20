#!/bin/bash

## Version 1.0
## Compiled by Kevin M. Cox

## Uses dockutil to add icons back to the user's dock at each login
## Should be set in Munki to REQUIRE dockutil

# Add Managed Software Center to the end of the dock
# Re-add it if removed from the dock but leave it alone if simply moved to a different position

/usr/local/bin/dockutil --add '/Applications/Managed Software Center.app' --position end
