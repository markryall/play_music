# Simple command line utilities for playing music

## somafm

This plays streaming music from soma.fm and (optionally) scrobbles track information to last.fm.

    somafm -h

This depends on `mplayer` (`brew install mplayer`) to play the somafm channel.

## play_music

This just plays audio files that you have in a local directory and (optionally) scrobbles track information to last.fm. 

    play_music -h

This depends on ffmpeg (`brew install ffmpeg`) to extract id3 tags.

## scrobbling

You need to create your own api key on last.fm to be able to perform scrobbling - the sign up is [here](https://www.last.fm/api/account/create). Once you have this, you will be able to enter the key, secret and then authenticate as a last.fm user.
