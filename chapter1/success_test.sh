#!/bin/bash
CMD="ls"
status
$CMD
if [ $? -eq 0 ];
	then
	echo "$CMD executed successfullly"
else
	echo "$CMD terminated unsuccessfully"
fi