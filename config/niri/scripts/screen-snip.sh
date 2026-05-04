#!/bin/bash
# A script that uses grim and slurp to take a selective screenshot.
# The result is saved to a file and to the clipboard.

SELECTION=$(slurp)

grim -l 9 -g "$SELECTION" - | wl-copy --type image/png
grim -l 9 -g "$SELECTION" $HOME/Pictures/Screenshots/$(date +'%m%d%y_%H%M%S').png && notify-send 'Screensnip taken!' -u low
