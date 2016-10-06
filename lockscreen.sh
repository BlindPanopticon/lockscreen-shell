#!/bin/bash
TITLE=LOCKSCREEN
NOTIFY_TIME=5000
EXIT_THRESHOLD=5
ARG_COUNT=1
REQUIRED_USER=$USER
FORCE_USER=FALSE

source ${0%/*}/chaos-shell.sh 

case $1 in
	command)
	${0%/*}/command.sh
	;;

	disable)
	${0%/*}/disable.sh
	;;

	enable)
	${0%/*}/enable.sh
	;;

	immediate)
	${0%/*}/immediate.sh
	;;

	initialize)
	${0%/*}/initialize.sh
	;;

	*)
	error "invalid argument"
	;;
esac

