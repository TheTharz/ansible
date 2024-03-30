#!/bin/bash

### This script prints system info ###
echo "Welcome to bash script."
echo

#checking system uptime
echo "##############################"
echo "The uptime of the system is : "
uptime
echo

#checking memory utilization
echo "##############################"
echo "Memory utilization"
free -m
echo

#checking disk utilization
echo "##############################"
echo "Disk utilization"
df -h