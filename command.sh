#!/bin/bash
TITLE=LOCKSCREEN_COMMAND
NOTIFY_TIME=5000
EXIT_THRESHOLD=5
ARG_COUNT=0
REQUIRED_USER=$USER

source ${0%/*}/chaos-shell.sh

i3lock -b -d -e -I 10 -i ${0%/*}/lock.png -c 000000


BACKDIR=~/Photos/Wallpapers

LABEL=FEH_BACKGROUND_SET
feh --bg-fill --randomize --recursive $BACKDIR
checkError 10
notify "Background set randomly from $BACKDIR"
