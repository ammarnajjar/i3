#!/bin/sh

# shutdown script for LMDE
# i=$(zenity --entry --text="Enter time to shutdown [HH:MM]")
# zenity --password | sudo -S shutdown -h $i

# this works on debian
echo | read i | zenity --entry --text="Enter time to shutdown [HH:MM]"; zenity --password | sudo -S shutdown -h $i
