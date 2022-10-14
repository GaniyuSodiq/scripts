#!/bin/bash

### This script prints system info ###

echo "Welcome to Bash script"
echo

# Checking system uptime
echo "#######################################"
echo "### The uptime of the system is: ###"
uptime
echo

# Memory Utilization
echo "#######################################"
echo "### Memory utilization: ###"
free -m
echo

# Disk Utilization
echo "#######################################"
echo "### Disk Utilization: ###"
df -h


