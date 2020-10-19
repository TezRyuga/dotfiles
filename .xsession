#!/bin/sh

#
# ~/.xsession
#
# Executed by xdm/gdm/kdm at login
#

echo "Script executed" >> log.txt
$HOME/.bin/display.sh
echo "display script executed" >> log.txt
#$HOME/.bin/new.sh
#dunst -config $HOME/.config/dunst/dunstrc
#$HOME/.bin/bat #if batttery < 20% notify
