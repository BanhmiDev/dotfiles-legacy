#!/bin/sh

which reattach-to-user-namespace > /dev/null

if [ $? -eq 0 ]; then
  reattach-to-user-namespace -l $SHELL
else
  $SHELL
fi
