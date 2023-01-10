#!/bin/bash
# Open this URL more than once: https://source.unsplash.com/random/1920x1080

# Download the image
URL="https://source.unsplash.com/random/1920x1080"

for i in {1..5}
do
    wget $URL
done

echo "Image downloaded and saved to $PWD"


# Default values for variables
path="./"
file_name="wallpaper"
resolution="1920x1080"

# Parse command line arguments and set variables accordingly
while getopts "p:t o:r:" opt; do
  case $opt in
    p) path="$OPTARG" ;;
    t) path="/tmp" ;;
    o) file_name="$OPTARG" ;;
    r) resolution="$OPTARG" ;;
    \?) echo "Usage: ./wallpaper.sh [-p PATH | -t] [-o FILENAME] [-r RESOLUTION]"
        exit 1;;
  esac
done

# Download the image and save it
url="https://source.unsplash.com/random/$resolution"

# create directory if it doesn't exist already
if [ -n "$path" ]; then
    mkdir -p $path
fi
# download image
wget -O $path/$file_name.jpg $url
    # wget -O $path/$file_name.jpg $URL

echo "Image downloaded and saved as $path/$file_name.jpg"


#-------------------------- New Script --------------------------#

# New Script that copy the shell file to home directory and download new image after a specific interval

# copy the script to home directory
cp shell_assignment.sh $HOME/shell_assignment.sh

# # add a cron job to run the script every 2 hours
interval=2
# Add a cron job to run the script every INTERVAL hours
crontab -l > mycron

echo "0 */$interval * * * $HOME/shell_assignment.sh -p $path" >> mycron
crontab mycron
rm mycron

echo "Cron job added to download a new image every $interval hours and save it in $path"
