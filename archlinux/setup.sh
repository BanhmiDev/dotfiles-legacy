#!/bin/sh
if [ `id -u` -ne 0 ]; then
  echo "This script must be run as root" 1>&2
  exit 1
fi

PACKAGES="
chromium
clipit
conky
dmenu
emacs
filezilla
git
htop
i3-wm
jre7-openjdk
jre8-openjdk
libreoffice-still
livestreamer
mpv
python2
python3
qt5-base
valgrind
vim
virtualbox
vlc
wine
zsh
"
LIST=$(echo $PACKAGES | tr -s '\n' ' ') # Replace newlines with spaces
pacman -S ${LIST}

echo "Updating font cache..."
fc-cache -vf
