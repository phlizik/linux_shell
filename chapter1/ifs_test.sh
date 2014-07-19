#!/bin/bash
data="name,sex,rollno,location"
oldifs=$IFS
IFS=,
for item in $data
do
echo item: $item
done
IFS=oldifs
