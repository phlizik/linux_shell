#!/bin/bash

ls -lS | awk 'BEGIN {
	getline;getline;
	name1=$9;size=$5
}
# echo $name1

{ name2=$9;
if(size==$5){
	"md5sum "name1 | getline; csum1=$1;
	"md5sum "name2 | getline; csum2=$1;
	if( csum1==csum2)
		{print name1; print name2 }
	};

	size=$5;name1=name2;
}' | sort -u > duplicate_files
cat duplicate_files | xargs -I {} md5sum {} | sort | uniq -w 32 | awk \
'{ print $2 }' | sort -u > duplicate_sample
echo duplicate_files
cat duplicate_files
echo duplicate_sample
cat duplicate_sample

echo removing ..
comm duplicate_files duplicate_sample -2 -3 | tee /dev/stderr | xargs  \
rm
echo Removed duplicates files successfully.