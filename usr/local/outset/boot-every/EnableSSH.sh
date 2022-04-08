#!/bin/bash

## Version 2.0
## Modified by Kevin M. Cox
## Original Script by Armin Briegel
## https://scriptingosx.com/2014/12/control-ssh-access-with-munki-nopkg-scripts/

## This script enables SSH by loading the LaunchDaemon, a workaround that Apple may block at any time.
## It then configures SSH access for Administrators only.
## This iteration is intended to be run as an Outset boot-once or boot-every script.

export PATH=/usr/bin:/bin:/usr/sbin:/sbin

ssh_group="com.apple.access_ssh"

# Enable SSH if needed
if [[ $(systemsetup -getremotelogin) = 'Remote Login: Off' ]]; then
	echo "Turning on Remote Login/SSH."
	launchctl load -w /System/Library/LaunchDaemons/ssh.plist
fi

# Does a group named "com.apple.access_ssh" exist?
if [[ $(dscl /Local/Default list /Groups | grep "${ssh_group}-disabled" | wc -l) -eq 1 ]]; then
	#rename this group
	echo "Renaming group '${ssh_group}-disabled'"
	dscl localhost change /Local/Default/Groups/${ssh_group}-disabled RecordName ${ssh_group}-disabled $ssh_group
elif [[ $(dscl /Local/Default list /Groups | grep "$ssh_group" | wc -l) -eq 0 ]]; then
	# create group
	echo "Creating group $ssh_group"
	dseditgroup -o create -n "/Local/Default" -r "Remote Login Group" -T group $ssh_group
fi

# does the group contain the admin group?
admin_uuid=$(dsmemberutil getuuid -G admin)
if [[ $(dscl /Local/Default read Groups/$ssh_group NestedGroups | grep "$admin_uuid" | wc -l) -eq 0 ]]; then
	echo "Adding admin group to $ssh_group"
	dseditgroup -o edit -n "/Local/Default" -a admin -t group $ssh_group
fi
