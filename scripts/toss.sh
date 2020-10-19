#!/bin/bash
#*********************************
#                      ______       
#  ____  ________________<  /__   __
#  __  |/_/  __ \_  ___/_  /__ | / /
#  __>  < / /_/ /  /   _  / __ |/ / 
#  __/|_| \____//_/    /_/  _____/  
#
#*********************************

function output {
  if [[ ${Result} -eq 1 ]]; then
	echo "Toss: Tails"
  elif [[ ${Result} -eq 0 ]]; then
	echo "Toss: Heads"
  fi
}

function toss {
  Result=$((RANDOM%2))
}

case "$1" in
  --toss)
	toss
	output
	;;
  *)
	output
	;;
esac
