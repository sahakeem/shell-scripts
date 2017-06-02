#!/bin/bash

myIP=`ip addr | grep -e eth1  | awk '{print $2}' | awk '0; NR == 2' | cut -d'/' -f1`

if [ "$myIP" = "172.10.255.1" ]; then
 echo -ne "True - my IP is: $myIP\n"

 else echo -ne "IP is not equal.\nIP is: $myIP\n"
fi

