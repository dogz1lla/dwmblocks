#/bin/sh

WALLPAPERS_DIR="$HOME/imgs/wallpapers/"
SELECTED=$(sxiv -rto $WALLPAPERS_DIR)

[[ -n ${SELECTED} ]] && feh --bg-scale $SELECTED || echo "Please mark the file in sxiv!"
