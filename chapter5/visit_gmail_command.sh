#!/bin/bash

username="burness1990@gmail.com"
password="dss_1990"

SHOW_COUNT=5

echo

curl -u $username:$password --silent "https://mail.google.com/mail/feed/atom" | \
tr -d '\n' | sed 's:</entry>:\n:g' |\
sed -n 's/.*<title>\(.*\)<\/title.*<author><name>\([^<]*\)<\/name><email>\([^<]*\).*/Author: \2 [\3] \nSubject: \1\n/p' | \
head -n $(( $SHOW_COUNT * 3))

#!/bin/bash
#Desc: Fetch gmail tool

# username='burness1990@gmail.com'
# password='dss_1990'

# SHOW_COUNT=5 # No of recent unread mails to be shown

# echo

# curl  -u $username:$password --silent "https://mail.google.com/mail/feed/atom" | \
# tr -d '\n' | sed 's:</entry>:\n:g' |\
# sed -n 's/.*<title>\(.*\)<\/title.*<author><name>\([^<]*\)<\/name><email>\([^<]*\).*/From: \2 [\3] \nSubject: \1\n/p' | \
# head -n $(( $SHOW_COUNT * 3 ))