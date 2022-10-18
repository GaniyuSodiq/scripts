#!/bin/bash

value=$(ip addr show | grep -v LOOPBACK | grep -ic mtu)

if [ $value -eq 1 ]
then
	echo "1 active network adaapter found."
elif [ $value -gt 1 ]
then
	echo "Found Multiple active intafaces."
else
	echo "No active interface founnd."
fi
