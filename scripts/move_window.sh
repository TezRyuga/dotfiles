#!/usr/bin/env bash
#*********************************
#                      ______       
#  ____  ________________<  /__   __
#  __  |/_/  __ \_  ___/_  /__ | / /
#  __>  < / /_/ /  /   _  / __ |/ / 
#  __/|_| \____//_/    /_/  _____/  
#
#*********************************

case $1 in
  '--top-right')
	berryc window_move_absolute 684 1 && berryc window_resize_absolute 682 382 ;;
  '--bottom-right')
	berryc window_move_absolute 684 384 && berryc window_resize_absolute 682 382;;
  '--top-left')
	berryc window_move_absolute 1 1 && berryc window_resize_absolute 682 382;;
  '--bottom-left')
	berryc window_move_absolute 1 384 && berryc window_resize_absolute 682 382;;
esac
