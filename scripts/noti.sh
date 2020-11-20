#!/bin/bash
#*********************************
#                      ______       
#  ____  ________________<  /__   __
#  __  |/_/  __ \_  ___/_  /__ | / /
#  __>  < / /_/ /  /   _  / __ |/ / 
#  __/|_| \____//_/    /_/  _____/  
#
#*********************************

battery=$(cat /sys/class/power_supply/BAT1/capacity)
stat=$(cat /sys/class/power_supply/BAT1/status)
time=$(date +"%A %d %b %Y %H:%M")

notify-send -t 5000 "Battery: $battery % ($stat)" 
notify-send -t 5000 "$time"
