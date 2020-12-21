#!/bin/bash

USERNAME=USERNAME
XINU_CHOICE=$2
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
