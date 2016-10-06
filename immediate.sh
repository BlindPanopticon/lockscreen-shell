#!/bin/bash
TITLE=LOCKSCREEN_IMMEDIATE
NOTIFY_TIME=5000
EXIT_THRESHOLD=5
ARG_COUNT=0
REQUIRED_USER=$USER

source ${0%/*}/chaos-shell.sh

notify "Screen locking"

LABEL=ENABLE_LOCKSCREEN
command ${0%/*}/lockscreen_enable.sh
checkError 10

LABEL=LOCK_SCREEN
sleep 1
xautolock -locknow
checkError 10

notify "Screen locked"
