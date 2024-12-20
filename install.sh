#!/bin/sh

label="com.user.whitenoise"

# get current path
path=$(pwd)

# read all space or tab
IFS=

# replace {pwd} to current path
cat com.user.whitenoise.plist | while read -r line
do
	echo $line | sed "s|{pwd}|$path|g"
done > ~/Library/LaunchAgents/$label.plist

launchctl list $label 1>/dev/null 2>&1 && launchctl unload ~/Library/LaunchAgents/$label.plist
launchctl load ~/Library/LaunchAgents/$label.plist
