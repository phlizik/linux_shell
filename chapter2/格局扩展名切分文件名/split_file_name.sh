#!/bin/bash

# use % to extract the name from the file_name 
file_jpg="sample.jpg"
name=${file_jpg%.*}
echo File name is :$name

# use # to extract the file format from the file_name

extension=${file_jpg#*.}
echo extension is : $extension
