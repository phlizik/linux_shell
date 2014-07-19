#!/bin/bash

# tempfile : return temp file name which like /tmp/fileazwod
temp_file=$(tempfile)
echo $temp_file

temp_file="/tmp/file-$RANDOM"
# use a random num to be tempfile name, RANDOM is a command which returns a random num
echo $temp_file

# Use '.$$' the ID of the process
temp_file="tmp/var.$$"
echo $temp_file
