#!/bin/bash

counter=0

while [ $counter -lt 5 ]
do
	echo "Looping...."
	echo "the value of counter is $counter."
	counter=$(( $counter + 1 ))
	sleep 1
done

echo "oOut of the loop"
