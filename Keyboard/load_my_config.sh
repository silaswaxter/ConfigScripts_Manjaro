#!/bin/bash

# Set Xmodmap
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
xmodmap $DIR/my_xmodmap

# Set KB speed
INITDELAY=140
CHARPERSEC=50
xset r rate $INITDELAY $CHARPERSEC

# Set KB hold vs. press key configs
killall xcape
xcape -e "Hyper_L=Escape" -t 250

echo "updated keyboard config"
