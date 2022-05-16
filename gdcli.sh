#!/usr/bin/env bash

printf "youshould have access to the gdrive then only you can dowload it"

# export it into file
clip=$(xclip -out -selection clipboard > url.txt)
echo $clip 

# covert it ijn porper format 
replace=$(cat url.txt | tr , '\n' > furl.txt)
echo $replace 

rm url.txt #clear the file 

while 
  read line;
     do youtube-dl --output "%(titile)s" $line;
done < furl.txt




