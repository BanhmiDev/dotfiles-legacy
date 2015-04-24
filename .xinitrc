export LANG=en_US.UTF-8
xset s off -dpms &
setxkbmap -layout gb
setxkbmap -option caps:escape &
xsetroot -cursor_name left_ptr &
clipit -n &
exec xmonad 
