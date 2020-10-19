#!/bin/bash
#*********************************
#                      ______       
#  ____  ________________<  /__   __
#  __  |/_/  __ \_  ___/_  /__ | / /
#  __>  < / /_/ /  /   _  / __ |/ / 
#  __/|_| \____//_/    /_/  _____/  
#
#*********************************

if [ "$(mocp -Q %state)" != "STOP" ]; then
  SONG=$(mocp -Q %song)
  
  if [ -n "$SONG" ];then
	echo "$SONG" 
  else
	basename "$(mocp -Q %file)"
  fi
else
  echo ""
fi
