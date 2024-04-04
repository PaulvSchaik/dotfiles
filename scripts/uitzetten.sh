#!/bin/bash

zenity --question --text="Computer uitzetten"
if [ $? = 0 ]; then
    systemctl poweroff
else
    exit
fi

