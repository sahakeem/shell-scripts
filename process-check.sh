#!/usr/bin/bash

checkproc=`systemctl status process | grep Active | awk '{print $3}'`

if [ $checkproc == "(running)" ]
then
        echo "Check OK - Ngninx is running. Status $checkproc"
  elif [ $checkproc == "(dead)" ]

   then
        echo "Error - process is not running! Status $checkproc"
fi

