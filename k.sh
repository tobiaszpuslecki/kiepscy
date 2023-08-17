#!/bin/bash

wget -O links.txt https://pastebin.pl/view/raw/0ce85bfa

filename="links.txt"
SUB='http'
name=''

mkdir ep

while read line;
do

# echo $line

if [[ "$line" == *"$SUB"* ]]; then
    echo $line
    wget -O ep/$name $line
     # break
else
    name=$line
    name="${name// /_}"
    name=$name".mp4"
    echo $name
fi

done < $filename



