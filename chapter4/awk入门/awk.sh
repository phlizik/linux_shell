echo -e "line1 f2 f3\nline2 f4 f5\nline3 f6 f7" | \
awk '{
print "Line no: "NR", No of fields:"NF, "$0="$0,"$1="$1,"$2="$2,"$3="$3
}'


seq 5 | awk 'BEGIN{ sum=0; print "Summation:"}
{ print $1"+";sum+=$1} END {print "=="; print sum}'

# use getline to read a line
seq 5 | awk 'BEGIN { getline; print "Read ahead first line", $0} { print $0 }'

# use awk to filter some contents
# awk 'NR < 5'
# awk 'NR==1,NR==4'
# awk '/linux/'
# awk '!/linux'

# use -F to specify a delimiter
awk -F: '{ print NF }' /etc/passwd

awk 'BEGIN { FS=":" } { print NF }' /etc/passwd