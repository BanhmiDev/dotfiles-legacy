#!/bin/sh
if [ `id -u` -ne 0 ]; then
  echo "This script must be run as root" 1>&2
  exit 1
fi

PACKAGES="
chromium
clipit
emacs
filezilla
git
htop
jre7-openjdk
jre8-openjdk
libreoffice-still
mpv
python2
python3
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
