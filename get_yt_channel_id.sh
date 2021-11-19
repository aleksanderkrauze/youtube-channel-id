#!/bin/sh

[ -z "$1" ] && \
	echo "Please provide youtube's channel url." && \
	exit 1

webpage=$(curl --fail $1 2> /dev/null)
[ "$?" -ne "0" ] && \
	echo "Response error. Check if you provided valid channel url." && \
	exit 1

echo $webpage | sed "s/.*<meta itemprop=\"channelId\" content=\"\([a-zA-Z0-9_\-]*\)\">.*/\1/"
