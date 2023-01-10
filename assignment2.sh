#!/bin/bash

interval=2  # Download new images every 24 hours by default

# Default path to save images
path="$HOME/wallpapers"

while getopts "i:p:" opt; do
  case $opt in
    i) interval="$OPTARG" ;;
    p) path="$OPTARG" ;;
    \?) echo "Usage: ./assignment2.sh [-i INTERVAL] [-p PATH]"
        exit 1;;
  esac
done

# Copy the wallpaper.sh script to the home directory
cp assignment2.sh "$HOME/assignment2.sh"

# Add a cron job to run the script every INTERVAL hours
crontab -l > mycron
echo "0 */$interval * * * $HOME/assignment2.sh -p $path" >> mycron
crontab mycron
rm mycron

echo "Cron job added to download a new image every $interval hours and save it in $path"