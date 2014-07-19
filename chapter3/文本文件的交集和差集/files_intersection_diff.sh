#!/bin/bash

# insersection: the common lines both in two files
# difference: some lines in A, but not in other files
# comm: first the files should be sorted

# show the files
cat A.txt
cat B.txt

# sort 
sort A.txt -o A.txt;sort B.txt -o B.txt

# insersection difference between A.txt and B.txt
echo 'comm A.txt B.txt'
comm A.txt B.txt

# some para to print in a format -1:del the first col, -2:del the second col,-3:del the third col
echo 'comm A.txt B.txt -1 -2'
comm A.txt B.txt -1 -2


echo "comm A.txt B.txt -3 | sed 's/^\t//'"
# use sed to del the '\t'
comm A.txt B.txt -3 | sed 's/^\t//'
