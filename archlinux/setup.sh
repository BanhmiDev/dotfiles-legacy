if [ `id -u` -ne 0 ]; then
  echo "This script must be run as root" 1>&2
  exit 1
fi

PACKAGES="
chromium
emacs
git
htop
jre7-openjdk
jre8-openjdk
vim
vlc
wine
zsh
"
LIST=$(echo $PACKAGES | tr -s '\n' ' ') # Replace newlines with spaces
pacman -S ${LIST}
