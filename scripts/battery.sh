#!/bin/bash
#*********************************
#                      ______       
#  ____  ________________<  /__   __
#  __  |/_/  __ \_  ___/_  /__ | / /
#  __>  < / /_/ /  /   _  / __ |/ / 
#  __/|_| \____//_/    /_/  _____/  
#
#*********************************


while true; do
  bat_perc=$(cat /sys/class/power_supply/BAT1/capacity)
  #echo $bat_perc
  if [[ $bat_perc -lt "66" ]]; then
	notify-send -u critical "Battery" "Battery less than 20%"
	break
	#echo "battery less than 63%" 
  fi
done

