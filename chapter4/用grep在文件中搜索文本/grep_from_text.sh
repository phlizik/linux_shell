#!/bin/bash

# test command: grep from a single file 

grep match_pattern test_file


# test command: grep from multi files
grep burness test_file test_file2 --color=auto


# use RE by param -E
grep -E "[0-9]+" test_file test_file2 --color=auto
# or use egrep
egrep "[0-9]+" test_file test_file2 --color=auto

# only print the pattern content
grep -E -o "[0-9]+" test_file test_file2 --color=auto

# print the content not in the pattern
grep -E -v "[0-9]+" test_file test_file2 --color=auto


# get the lines in the pattern, but not the num matched
grep -E -c "[0-9]+" test_file test_file2 --color=auto

# print the num matched
grep -E -o "[0-9]+" test_file test_file2 --color=auto | wc -l

# print the num of lines matched
grep burness -n test_file test_file2


# serch the file which include the content 
grep -l burness test_file test_file2 

# only search some specified files(c,cpp)
grep "main()" . -r --include *.(c,cpp)

# search but exclude some files
grep "main()" . -r --exclude "README"

# exclude  dir use --exclude-dir to exclude dir 123
grep "main()" . -r --exclude-dir "123"
