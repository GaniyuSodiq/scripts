#!/bin/bash

MYUSERS="Alpha Beta Gamma"

for USR in $MYUSERS
do
	echo  "Adding user $USR."
	sleep 2
	useradd $USR
	id $USR
	echo "#3################3###3########"
	sleep 1
done
