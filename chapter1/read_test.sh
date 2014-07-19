#!/bin/bash
read -n 2 var
echo $var
read -s var2
echo $var2
read -p "Enter input:" var3
echo $var3
read -t 2 var4
echo $var4
# 使用定界符
# read -d ":" var
read -d ":" var5
echo $var5
