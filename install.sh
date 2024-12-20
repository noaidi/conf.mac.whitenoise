#!/bin/sh

# get current path
path=$(pwd)

# read all space or tab
IFS=

# replace {pwd} to current path
cat com.user.whitenoise.plist | while read -r line
do
	echo $line | sed "s|{pwd}|$path|g"
done > ~/Library/LaunchAgents/com.user.whitenoise.plist

launchctl unload ~/Library/LaunchAgents/com.user.whitenoise.plist
launchctl load ~/Library/LaunchAgents/com.user.whitenoise.plist
