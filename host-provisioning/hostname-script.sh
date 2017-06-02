#!/bin/bash
# A simple script that checks /etc/hostname for the proper info and sets the hostname accordingly

# Find host IP
echo "Find ip"
ip=`ip addr | grep inet | grep 192 | awk '{print $2}' | cut -d'/' -f1`
echo $ip
# Set ip output to a variable
echo "Find host name using $ip"
host=`cat /etc/hosts | grep -w $ip | awk '{print $2}'`
# Set hostname
hostnamectl set-hostname $host
