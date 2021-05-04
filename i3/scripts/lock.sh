#!/usr/bin/env bash

icon="$HOME/.config/i3/icon.png"
tmpbg='/tmp/screen.png'
xRes=$(echo 1280 - 623)

#(( $# )) && { icon=$1; }

rm -f "$tmpbg"

scrot "$tmpbg"
convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
convert "$tmpbg" "$icon" -geometry +1025+474 -composite -matte "$tmpbg"
i3lock -u -i "$tmpbg"
