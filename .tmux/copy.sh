#!/bin/sh

which reattach-to-user-namespace

if [ $? -eq 0 ]; then
  reattach-to-user-namespace ~/.tmux/tmux-pbcopy
fi
