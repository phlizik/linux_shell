cat student_data.txt

cut -f1 student_data.txt
cut -f2,4 student_data.txt

# use --complement 
cut -f3 --complement student_data.txt

# specify the delimited symbol
cut -f2 -d";" delimited_data.txt