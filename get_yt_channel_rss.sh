#!/bin/sh

[ -z "$1" ] && \
	echo "Please provide youtube's channel url." && \
	exit 1

CHANNEL_ID=$(sh ./get_yt_channel_id.sh $1)

EXIT_CODE=$?
[ "$EXIT_CODE" -gt "0" ] &&
	exit $EXIT_CODE

echo "https://www.youtube.com/feeds/videos.xml?channel_id=$CHANNEL_ID"
