#!/bin/bash
xmodmap -e 'keycode 108 = Alt_R'
xmodmap -e 'remove mod1 = Alt_R'
xmodmap -e 'add mod3 = Alt_R'
setxkbmap -option caps:swapescape

exec i3 

