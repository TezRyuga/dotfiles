#!/bin/bash
#*********************************
#                      ______       
#  ____  ________________<  /__   __
#  __  |/_/  __ \_  ___/_  /__ | / /
#  __>  < / /_/ /  /   _  / __ |/ / 
#  __/|_| \____//_/    /_/  _____/  
#
#*********************************
choice="$(echo "logout\nrestart\nshutdown\nsuspend\n'               '"| \
    dmenu -fn "Recursive Mono Linear Static" -nb "#1c1b1d" -nf "#fdf9f7" -sb "#fdf9f7" -sf "#121213")"

[ -z "$choice" ] && \
  exit 1 || \
  case "$choice" in
	logout)		openbox --exit		;;
	restart)	systemctl reboot 	;;
	shutdown) 	systemctl poweroff 	;;
	suspend) 	systemctl suspend	;;
  esac
