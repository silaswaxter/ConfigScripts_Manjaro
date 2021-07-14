#!/bin/bash

#get directory of this file
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Alert User w/ Notification
notify-send -t 750 "Running Settings Scripts"

# Set KB settings
bash $DIR/Keyboard/load_my_config.sh

# Set Drawing Tablet Settings
bash $DIR/Tablet/map_pen_tablet.sh 

# Set Wallpaper settings
bash $DIR/Wallpaper/update.sh

# Alert User w/ Notification
notify-send -t 750 "Finished Updating Settings"

