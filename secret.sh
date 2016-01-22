#!/bin/sh
win=$(xdotool getwindowpid)
xdotool type --window "$win" --clearmodifiers --delay 1 "PASSWORD"
