#!/bin/sh

urxvt256c "$@"
if [ $? -eq 2 ]; then
 urxvtd -q -o -f
 urxvt256c "$@"
fi
