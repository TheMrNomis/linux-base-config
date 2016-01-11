#!/bin/bash

CMD=`echo -e "cancel\nsuspend\nshutdown\nrestart" | dmenu`

if [[ $CMD = "suspend" ]]
then
	dm-tool switch-to-greeter 
	systemctl suspend
fi

if [[ $CMD = "shutdown" ]]
then
	systemctl poweroff
fi

if [[ $CMD = "restart" ]]
then
	systemctl reboot
fi
