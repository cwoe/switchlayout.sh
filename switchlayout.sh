#!/bin/bash

cur_layout=$(setxkbmap -print -verbose 10 | grep layout: | awk '{print $2}')

if [ "$cur_layout"  = us ]
then
	setxkbmap de
	notify-send -t 500 "Switched Kayboard Layout" "Current layout: DE"
else
	setxkbmap us
	notify-send -t 500 "Switched Kayboard Layout" "Current layout: US"
fi
