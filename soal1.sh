#!/bin/bash
n=1
for ((x=1; x<=97; x=x+1))
do
nama=$(ls -1 /home/claus/Downloads/nature | awk -v i="$x" 'NR==i')
base64 -d /home/claus/Downloads/nature/$nama | xxd -r > /home/claus/Downloads/hasil/$x.jpg
done
