#!/bin/bash
TITLE=LOCKSCREEN_ENABLE
NOTIFY_TIME=5000
EXIT_THRESHOLD=5
ARG_COUNT=0
REQUIRED_USER=$USER

source ${0%/*}/chaos-shell.sh

LABEL=ENABLE_DPMS
xset +dpms
sleep .1
xset -q | grep "DPMS is Enabled" -q
checkError 10

LABEL=ENABLE_SCREEN_BLANKING
xset s on
sleep .1
xset -q | grep "timeout:  600" -q
checkError 10

LABEL=ENABLE_XAUTOLOCK
xautolock -enable
checkError 10

notify "Lockscreen enabled"
