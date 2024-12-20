#!/bin/sh

label="com.user.whitenoise"

launchctl list $label 1>/dev/null 2>&1 && launchctl remove $label
rm -f ~/Library/LaunchAgents/$label.plist
