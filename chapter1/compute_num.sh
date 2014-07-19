#!/bin/bash
# use let to compute
no1=4;
no2=5;
let result=no1+no2
echo $result
# use [] to compute
result2=$[ no1+no2 ]
echo $result2
# use (()) to compute
result3=$(( no1+50))
echo $result3

# use expr
result4=`expr 3 + 4`
echo $result4

# a super tool to compute num :bc
# all above is for integers and bc could be used for float
echo "4*0.56"|bc
no=54;
result5=`echo "$no * 1.5" | bc`
echo $result5
# set the scale
echo "scale=3;3/8" | bc
# base transplant
no1=100
echo "obase=2;$no1" | bc
no1=1100100
echo "obase=10;ibase=2;$no1" | bc
# compute sqrt and square
echo "sqrt(100)" | bc 
echo "10^2" | bc