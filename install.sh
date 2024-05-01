#!/bin/bash
# bspwm, kitty, picom, sxhkd.

path=$(pwd)

# check if bspwm && sxhkd && kitty && picom are installed
if ! [ -x "$(command -v bspwm)" ] || ! [ -x "$(command -v sxhkd)" ] || ! [ -x "$(command -v kitty)" ] || ! [ -x "$(command -v picom)" ]; then
{
  echo "Installing dependencies..."
  sudo pacman -S bspwm sxhkd kitty picom
}
fi

# check if bin directory exists
if [ -d "$HOME/.local/bin" ]; then
{
  cp $path/bin/ $HOME/.local/bin
}else{
  mkdir -p $HOME/.local/bin
  cp $path/bin/ $HOME/.local/bin
}
fi

#check if the directories exists
if [ -d "$HOME/.config/bspwm/" ]; then
{
  mv $HOME/.config/bspwm/ $path/backup
}else
  cp $path/bspwm/ $HOME/.config/bspwm/
fi

if [ -d "$HOME/.config/sxhkd/" ]; then
{
  mv $HOME/.config/sxhkd/ $path/backup
}else
  cp $path/sxhkd/ $HOME/.config/sxhkd/
fi

if [ -d "$HOME/.config/kitty/" ]; then
{
  mv $HOME/.config/kitty/ $path/backup
}else
  cp $path/kitty/ $HOME/.config/kitty/
fi

if [ -d "$HOME/.config/picom/" ]; then
{
  mv $HOME/.config/picom/ $path/backup
}else
  cp $path/picom/ $HOME/.config/picom/
fi

mv $HOME/.bashrc $path/backup
cp $path/bashrc $HOME/.bashrc

echo "Done!"
