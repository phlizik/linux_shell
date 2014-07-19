#!/bin/bash
#Filename: no_of_seconds.sh
echo -n Count:
tput sc

count=0
while true; 
do
	#statements
	if [ $count -lt 40 ];
	then
		let count++;
		sleep 1;
		tput rc
		tput ed
		echo -n $count;
	else exit 0;
	fi
done