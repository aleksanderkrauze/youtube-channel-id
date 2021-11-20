I created this little project to help me (and others) to easily get YouTube's channel ID
and it's RSS feed. Unfortunately YouTube is owned by Google, and therefore it is utterly
user unfriendly, so everything is difficult to do/obtain and usually requires serious
deobfuscation. Of course my solution could be invalidated at any point in time, when
YouTube decides to change something and brake this hack. If it happens and I will be aware
of it and there will be an alternate solution (and probably there won't be) I will update this.
Otherwise tough luck, we all have to suck it!

The trick for checking channel's ID is to search for this meta tag in YouTube channel
(or any of it's videos) web page `<meta itemprop="channelId" content="CHANNEL_ID">`.
Having it you can also get an RSS feed for this channel by looking at
`https://www.youtube.com/feeds/videos.xml?channel_id=CHANNEL_ID`.

I implemented this with 2 simple shell scripts. It uses only POSIX complaint shell,
curl and sed. It *should* be platform agnostic, but I don't guarantee that. If you'd like
to use some different language feel free to do so. All the magic is in the regex in
`./get_yt_channel_id.sh`.

If you'd find any bug or would like to improve this scripts feel free to make a pull request.
And if this README helped you to understand how to find YouTube channel's ID or it's RSS feed,
then I'm happy I helped.

And lastly to YouTube. For all shit that you do, F you.
