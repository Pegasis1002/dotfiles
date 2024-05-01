#!/bin/bash
# bspwm, kitty, picom, sxhkd.

path=$(pwd)

#check if the directory exists
if [ -d "$HOME/.config/bspwm/" ]; then
{
  mv $HOME/.config/bspwm/ $path/backup
}
if [ -d "$HOME/.config/sxhkd/" ]; then
{
  mv $HOME/.config/sxhkd/ $path/backup
}
if [ -d "$HOME/.config/kitty/" ]; then
{
  mv $HOME/.config/kitty/ $path/backup
}
if [ -d "$HOME/.config/picom/" ]; then
{
  mv $HOME/.config/picom/ $path/backup
}

mv $HOME/.bashrc $path/backup

cp bspwm $HOME/.config/
cp sxhkd $HOME/.config/
cp kitty $HOME/.config/
cp picom $HOME/.config/
cp .bashrc $HOME/

echo "Done!"
