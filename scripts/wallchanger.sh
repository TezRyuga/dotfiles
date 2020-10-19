#!/bin/bash
#*********************************
#                      ______       
#  ____  ________________<  /__   __
#  __  |/_/  __ \_  ___/_  /__ | / /
#  __>  < / /_/ /  /   _  / __ |/ / 
#  __/|_| \____//_/    /_/  _____/  
#
#*********************************
# while true; do
#   exec $HOME/Downloads/wallpaper-changer/wp-changer
#   sleep 10
# done

dir="$HOME/Pictures/bgs"
total=$(ls $dir | wc -l)
num="$(($RANDOM%$total))"
k=0

#loop
for i in "$dir"/*; do

  wps[$k]="$i"
  k=$((k+1))
done

feh --bg-fill "${wps[$num]}"
wal -i "${wps[$num]}"
