#!/bin/sh

[ -z "$1" ] && \
	echo 1>&2 "Please provide youtube's channel url." && \
	exit 1

WEBPAGE=$(curl --fail $1 2> /dev/null)
[ "$?" -ne "0" ] && \
	echo 1>&2 "Response error. Check if you provided valid channel url." && \
	exit 1

echo $WEBPAGE | sed "s/.*<meta itemprop=\"channelId\" content=\"\([a-zA-Z0-9_\-]*\)\">.*/\1/"
