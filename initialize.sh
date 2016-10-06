#!/bin/bash
TITLE=LOCKSCREEN_INITIALIZE
NOTIFY_TIME=5000
EXIT_THRESHOLD=5
ARG_COUNT=0
REQUIRED_USER=$USER

source ${0%/*}/chaos-shell.sh

statement "Lockscreen initializing"

LABEL=START_XAUTOLOCK
xautolock -detectsleep -time 10 -locker "${0%/*}/lockscreen_command.sh" -notify 30 -notifier 'notify-send -u critical -t $NOTIFY_TIME NOTIFICATION:$TITLE "Locking Screen in 30 Seconds"' &
checkError 10

LABEL=ENABLE_LOCKSCREEN
command ${0%/*}/lockscreen_enable.sh
checkError 10

notify "Lockscreen initialized"
