#!/bin/bash
word=$1
grep "^$1$" /usr/share/dict/british-english -q
if [ $? -eq 0 ];then
	echo $word is a dictionary word
else
	echo $word is not a dictionary word
fi


# use aspell to check whether the word is in the dictionary
output=`echo \"$word\" | aspell list`
if [ -z $output ]; then
	echo $word is a dictionary word
else
	echo $word is not a dictionary word
fi