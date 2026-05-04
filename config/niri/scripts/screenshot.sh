#!/bin/bash
# A script that uses grim and slurp to take a full screenshot.
# The result is saved to a file and to the clipboard.

grim -l 9 $HOME/Pictures/Screenshots/$(date +'%m%d%y_%H%M%S').png
grim -l 9 - | wl-copy --type image/png \
  && notify-send 'Screenshot taken!' -u low

