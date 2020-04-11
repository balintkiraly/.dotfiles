#!/bin/bash
setxkbmap -option caps:swapescape
xmodmap -e 'keycode 108 = Alt_R'
xmodmap -e 'remove mod1 = Alt_R'
xmodmap -e 'add mod3 = Alt_R'
xset r rate 250 40

exec i3 

