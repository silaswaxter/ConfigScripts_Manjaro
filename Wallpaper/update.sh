#!/bin/bash

#get directory of this file
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

wallpaper_image=/usr/share/slick-greeter/slick-greeter.png

# Set Wallpaper
nitrogen --set-scaled $wallpaper_image
