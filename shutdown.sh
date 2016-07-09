#!/bin/sh

# LMDE
# i=$(zenity --entry --text="Enter time to shutdown [HH:MM]")
# zenity --password | sudo -S shutdown -h $i

# debian / fedora
echo | read i | zenity --entry --text="Enter time to shutdown [HH:MM]"; zenity --password | sudo -S shutdown -h $i
