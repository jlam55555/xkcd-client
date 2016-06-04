#!/bin/bash

# get HTML file
FILENAME=".xkcdFile"
wget -q -O ${FILENAME} http://c.xkcd.com/random/comic/

# get data from HTML file
TITLE=$(cat ${FILENAME} | grep -Pzo '(?<= alt=")(.+?)(?=" />)')
CAPTION=$(cat ${FILENAME} | grep -Pzo '(?<=" title=")(.+?)(?=" alt=".+?" />)')
URL=$(cat ${FILENAME} | grep -Pzo '(?<=<div id="comic">\n<img src=")(.+?)(?=")')
RELURL=$(echo ${URL} | grep -Po '(?<=//imgs\.xkcd\.com/comics/).+$')

# get image file
wget -q "http:${URL}"

# print out message
printf "\nTitle: ${TITLE}\nCaption: ${CAPTION}\nURL: ${RELURL}\n\n"

# display image file
# uses code from http://stackoverflow.com/questions/25585625
wmctrl -T master$$ -r :ACTIVE: ; display ${RELURL} & sleep 0.1 ; wmctrl -a master$$
IMGPCS=$!

# wait for user input to complete the rest
read -s -n 1

# remove files
rm ${FILENAME}
rm ${RELURL}
kill ${IMGPCS}
