#!/bin/zsh

## Sets initial Menu Bar options for users the first time they login

## Version 1.1
## by Kevin M. Cox


# Show Battery percentage in Menu bar, works for internal batteries and UPS

/usr/bin/defaults -currentHost write com.apple.controlcenter BatteryShowPercentage -bool true

# Show Day Month Date Time AM/PM and flash the time separators in the Menu Clock

/usr/bin/defaults write com.apple.menuextra.clock DateFormat 'EEE MMM d  h:mm a'
/usr/bin/defaults write com.apple.menuextra.clock FlashDateSeparators -bool true
/usr/bin/defaults write com.apple.menuextra.clock ShowAMPM -bool true
/usr/bin/defaults write com.apple.menuextra.clock ShowDayOfMonth -bool true
/usr/bin/defaults write com.apple.menuextra.clock ShowDayOfWeek -bool true

# Always show Sound in Menu Bar
/usr/bin/defaults -currentHost write com.apple.controlcenter Sound -int 16

# Hide WiFi in Menu Bar for desktops

# Is the computer a notebook?
NotebookCheck=$(sysctl -n hw.model | grep Book)

if
	[ -z $NotebookCheck ]
	then # Hide WiFi in the Menu Bar for desktops
	/usr/bin/defaults -currentHost write com.apple.controlcenter WiFi -int 8
fi
