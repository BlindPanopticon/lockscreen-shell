#!/bin/bash
TITLE=LOCKSCREEN_DISABLE
NOTIFY_TIME=5000
EXIT_THRESHOLD=5
ARG_COUNT=0
REQUIRED_USER=$USER

source ${0%/*}/chaos-shell.sh

LABEL=DISABLE_DPMS
xset -dpms
sleep .1
xset -q | grep "DPMS is Disabled" -q
checkError 10

LABEL=DISABLE_SCREEN_BLANKING
xset s off
sleep .1
xset -q | grep "timeout:  0" -q
checkError 10

LABEL=DISABLE_XAUTOLOCK
xautolock -disable
checkError 10

notify "Disabled lockscreen"
