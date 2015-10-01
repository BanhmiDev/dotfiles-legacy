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
liberoffice
openjdk-7-jre
python2.7
python3
vim
vlc
wine
zsh
"
LIST=$(echo $PACKAGES | tr -s '\n' ' ') # Replace newlines with spaces
apt-get install ${LIST}
