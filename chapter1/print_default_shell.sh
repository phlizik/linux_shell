#!/bin/bash
#/etc/passwd，每一行包含由:划分的多个条目，每行对应以为用户的相关属性
test_file="/etc/passwd"
while read -r line
do
oldIFS=$IFS
IFS=":"
count=0
for item in $line;
do
[ $count -eq 0 ] && user=$item;
[ $count -eq 6 ] && shell=$item;
let count++
done;
echo The user :$user\'s shell is $shell
done < $test_file
IFS=$oldIFS
