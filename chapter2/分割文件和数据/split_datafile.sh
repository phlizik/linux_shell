#!/bin/bash

# Use 'dd' to generate a data.file (100Kb), if:in file,if=/dev/zero : input all zeros, of: out file 
dd if=/dev/zero bs=100k count=1 of=data.file
ls

# split data.file to 10 10k files
split -b 10k data.file
ls
echo -e '\033[41;36mdelete the splited files\033[0m'
rm x*
ls

# use -d : use num to be the name of the files which be splited
# use -a length to specify the lenght of the suffix
split -b 10k data.file -d -a 4
ls
echo -e '\033[41;36mdelete the splited files\033[0m'
rm x*
ls

# use split paras to specify prefix
split -b 10k data.file -d -a 4 split_file
ls
echo -e '\033[41;36mdelete the splited files\033[0m'
rm split_file*
ls

# use line to split file instead of size
split -l 1 data.file
ls
echo -e '\033[41;36mdelete the splited files\033[0m'
rm x*
ls

# csplit is a improved implement based split
cat burness.log

# /[RE]/: match the lines {*} repeat until ends -s: don't print the information -n: the num length of suffix
# -f specify the prefix name -b: specify the format of the suffix.
# rm burness00.log because there is no contents in the first file

csplit burness.log /burness/ -n 2 -s {*} -f burness -b "%02d.log"

ls
rm burness00.log
ls
rm burness0*
ls


