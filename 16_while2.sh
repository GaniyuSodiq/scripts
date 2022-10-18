#!/bin/bash

result=2
multiply=1

while true
do
	echo "Looping ..."
	echo "The value of 2*$multiply is $result."
	result=$(( $result * 2 ))
	sleep 2
	echo
done

echo "Out of loop my ass"

