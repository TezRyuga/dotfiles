#!/bin/bash
#*********************************
#                      ______       
#  ____  ________________<  /__   __
#  __  |/_/  __ \_  ___/_  /__ | / /
#  __>  < / /_/ /  /   _  / __ |/ / 
#  __/|_| \____//_/    /_/  _____/  
#
#*********************************

ext_monitor=$(xrandr --query | grep 'HDMI1' | cut -d ' ' -f 2)
if [[ $ext_monitor == connected ]]; then
  xrandr --output eDP1 --primary --mode 1366x768 --rotate normal --output HDMI1 --mode 1440x900 --rotate normal --right-of eDP1
  echo "Monitor connected" >> ~/Documents/log.txt
else 
  echo "Monitor not connected" >> ~/Documents/log.txt
fi

echo "now" && echo date +%T >> ~/Documents/log.txt
