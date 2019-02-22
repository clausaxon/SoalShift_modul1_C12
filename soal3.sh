#!/bin/bash

tes=$(cat /dev/urandom | tr -dc 'A-Za-z0-9' | head -c 12 )
n=1
flag=0
while [ $flag==0 ]
 do
  if [ $(find /home/claus/Desktop/ -name password$n.txt | wc -l) -gt 0 ]
  then
   flag=0
   let n=$n+1
  else
   echo $tes > /home/claus/Desktop/password$n.txt
   break
fi
done
