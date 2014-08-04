#!/bin/bash

diff -u version1.txt version2.txt

# diff out to a patch file

diff -u version1.txt version2.txt > version.patch

# use patch to fix the version1.txt
patch -p1 version1.txt < version.patch

echo after the patch
diff -u version1.txt version2.txt

# to revoke the fix
patch -p1 version1.txt < version.patch

diff -u version1.txt version2.txt