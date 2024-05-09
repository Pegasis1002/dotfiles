#!/bin/bash

# generate a random number between 0 and 9
rand=$((($RANDOM % 10)))

if [[ $rand > 5 ]]; then
	wall=$(find ~/wallpapers/misc -name "*.jpg" -o -name "*.png" | shuf -n 1)
else
	wall=$(find ~/wallpapers/landscapes -name "*.jpg" -o -name "*.png" | shuf -n 1)
fi

echo $wall
feh --bg-fill $wall
