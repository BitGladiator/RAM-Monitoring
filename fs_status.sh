#!/bin/bash
#monitoring the free fs space disk
FU=$(df -H | egrep -v "Filesystem|tmpfs" | grep "vda2" | awk '{print $5}' | tr -d %)
TO="karansh1232@gmail.com"

if [[ $FU -ge 5 ]]
then 
	echo "Warning, disk space is low - $FU %" | mail -s "DISK SPACE ALERT!" $TO

else
	echo "All good"
fi
