#!/bin/bash

#gets the name of the artist
echo What is the artist of the song?
read ARTIST

#gets the name of the song
echo What is the name of the song?
read NAME
echo "##################################"
echo "#### P L E A S E      W A I T  ###"
echo "##################################"

#creates a folder to save the new downloaded song

if [ ! -d $Music ]; then
  mkdir Music && cd Music
  youtube-dl "ytsearch:$ARTIST $NAME album version"       
fi

#changes directory to the music file and download the song there
cd Music
youtube-dl "ytsearch:$ARTIST $NAME album version"
echo Your song has been downloaded successfully