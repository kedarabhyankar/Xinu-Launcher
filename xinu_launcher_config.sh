#!/bin/bash

USERNAME=$1
XINU_CHOICE=$2
CONFIG=config
if test -f "$CONFIG"; then
	counter=0
	while IFS= read -r line
	do
	if [$counter -eq 0]; then
		
	elif [$counter -eq 1]; then
	
	elif [$counter -eq 2]; then
		
	fi
	counter += 1
	done
elif
	if [ "$#" -lt 1 ]; then
		echo "No arguments passed in, and no config file. Exiting."
		exit 1;
	elif
		echo "No config file, defaulting to arguments 			instead."
	fi
fi
if [ $XINU_CHOICE -gt  21 ]; then
	echo "XINU_CHOICE GREATER THAN 21"
	exit 1
fi
if [ $XINU_CHOICE -lt 1 ]; then
	echo "XINU_CHOICE LESS THAN 1"
	exit 1
fi
if [ $XINU_CHOICE -ge 1 ] && [ $XINU_CHOICE -le 9 ]; then
	printf -v XINU_CHOICE "%02g" $XINU_CHOICE
fi

SSH_STRING="xinu$XINU_CHOICE.cs.purdue.edu"
echo "ssh-ing into $USERNAME@$SSH_STRING"
ssh "$USERNAME@$SSH_STRING"
