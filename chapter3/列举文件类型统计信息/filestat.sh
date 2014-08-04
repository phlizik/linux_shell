#!/bin/bash

if [ $# -ne 1 ];
	then
	echo $0 basepath
	echo
fi 
path=$1

declare -A statarray;
# use the out of the command 'find $path -type f -print', then use read line to get file name ,
# last use file -b to get the type of the file 
while read line;
do
	ftype=`file -b "$line" `
	let statarray["$ftype"]++;

done< <(find $path -type f -print)


echo ============= File types and counts ==================
for ftype in "${!statarray[@]}";
do
	echo $ftype : ${statarray["$ftype"]}
done
