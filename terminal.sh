#!/bin/sh

urxvt256cc "$@"
if [ $? -eq 2 ]; then
 urxvt256cd -q -o -f
 urxvt256cc "$@"
fi
