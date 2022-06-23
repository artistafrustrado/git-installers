#!/bin/bash

#Wacom Intuos4 4x6 Pad pad               id: 17  type: PAD
#Wacom Intuos4 4x6 Pen stylus            id: 18  type: STYLUS
#Wacom Intuos4 4x6 Pen eraser            id: 19  type: ERASER
#Wacom Intuos4 4x6 Pen cursor            id: 20  type: CURSOR

xsetwacom --list devices

xsetwacom --set "13" MapToOutput HEAD-0
xsetwacom --set "14" MapToOutput HEAD-0
xsetwacom --set "22" MapToOutput HEAD-0
xsetwacom --set "23" MapToOutput HEAD-0

#https://askubuntu.com/questions/270156/how-to-map-wacom-correctly-to-monitor
