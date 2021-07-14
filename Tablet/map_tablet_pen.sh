#!/bin/sh
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

TABLETDISPLAY=$( $DIR/print_monitor_names.sh | grep "13.3" | grep -Eo "^[^ ]+")
XINPUT_TABLETPEN_ID=$(xinput list | grep "13.3" | grep " Pen " | grep -o "id=[0-9]*" | grep -o "[0-9]*")

echo "mapping drawing-tablet:(xinput_id:$XINPUT_TABLETPEN_ID) to (display:$TABLETDISPLAY)"

xinput map-to-output $XINPUT_TABLETPEN_ID $TABLETDISPLAY

notify-send -t 1000 "Tablet Config Loaded"
