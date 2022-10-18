#!/bin/bash

echo "Welcome $USER on $HOSTNAME."
echo "########3#####################"

FREERAM=$(free -m | grep Mem | awk '{print $4}')
LOAD=`uptime | awk '{print $9}'`
ROOTFREE=$(df -h | grep '/dev/sda1' | awk '{print $4}')

echo "####3#########################"
echo "Available free RAM is $FREERAM MB"
echo "##########3##########3########"
echo "Current Load Average $LOAD"
echo "######3#######################"
echo "Free ROOT partition size is $ROOTFREE"
