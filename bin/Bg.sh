#!/bin/bash

wall=$(find ~/wallpapers -name "*.jpg" -o -name "*.png" | shuf -n 1)

echo $wall
feh --bg-fill $wall
