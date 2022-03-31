#!/bin/zsh

## Version 1.4
## Compiled by Kevin M. Cox

## This script uses dockutil to setup a user's dock the first time they login.
## The package deploying this script should be configured in Munki to REQUIRE both outset and dockutil.

# Get the username of the logged in user
LoggedInUser=$( scutil <<< "show State:/Users/ConsoleUser" | awk '/Name :/ && ! /loginwindow/ { print $3 }' )

if
	# Check if the logged in user is one of our local admin accounts
	[ $LoggedInUser = admin1 ] || [ $LoggedInUser = admin2 ]

	then # Setup the dock for an admin user
	echo "Setting up the Dock for an administrator..."
	/usr/bin/defaults write com.apple.dock show-recents -bool false
	/usr/local/bin/dockutil --remove all --no-restart
	/usr/local/bin/dockutil --add '/System/Applications/Launchpad.app' --no-restart
	/usr/local/bin/dockutil --add '/Applications/Safari.app' --no-restart
	/usr/local/bin/dockutil --add '/Applications/Google Chrome.app' --no-restart
	/usr/local/bin/dockutil --add '/System/Applications/TextEdit.app' --no-restart
	/usr/local/bin/dockutil --add '/System/Applications/Utilities/Terminal.app' --no-restart
	/usr/local/bin/dockutil --add '/System/Applications/Utilities/Console.app' --no-restart
	/usr/local/bin/dockutil --add '/System/Applications/Utilities/Disk Utility.app' --no-restart
	/usr/local/bin/dockutil --add '/System/Applications/Utilities/Activity Monitor.app' --no-restart
	/usr/local/bin/dockutil --add '/Applications/DetectX Swift.app' --no-restart
	/usr/local/bin/dockutil --add '/Applications/MachineProfile.app' --no-restart
	/usr/local/bin/dockutil --add '/System/Applications/Utilities/System Information.app' --no-restart
	/usr/local/bin/dockutil --add '/System/Applications/System Preferences.app' --no-restart
	/usr/local/bin/dockutil --add '/Applications/Managed Software Center.app' --no-restart
	/usr/local/bin/dockutil --add '~/Downloads'

	else # Setup the dock for a standard user
	echo "Setting up the Dock for an standard user..."
	/usr/bin/defaults write com.apple.dock show-recents -bool false
	/usr/local/bin/dockutil --remove all --no-restart
	/usr/local/bin/dockutil --add '/Applications/Google Chrome.app' --no-restart
	/usr/local/bin/dockutil --add '/Applications/Slack.app' --no-restart
	/usr/local/bin/dockutil --add '/System/Applications/TextEdit.app' --no-restart
	/usr/local/bin/dockutil --add '/System/Applications/Calculator.app' --no-restart
	/usr/local/bin/dockutil --add '/System/Applications/Dictionary.app' --no-restart
	/usr/local/bin/dockutil --add '/System/Applications/Maps.app' --no-restart
	/usr/local/bin/dockutil --add '/System/Applications/News.app' --no-restart
	/usr/local/bin/dockutil --add '/System/Applications/System Preferences.app' --no-restart
	/usr/local/bin/dockutil --add '/Applications/Managed Software Center.app' --no-restart
	/usr/local/bin/dockutil --add '~/Downloads'
fi
