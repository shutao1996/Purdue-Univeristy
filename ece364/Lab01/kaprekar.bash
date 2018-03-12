#! /bin/bash

#---------------------------------------
# $Author: ee364f06 $
# $Date: 2018-01-17 14:35:49 -0500 (Wed, 17 Jan 2018) $
#---------------------------------------

# Do not modify above this line.

if (( $# != 1 ))
then
    echo "Usage: kaprekar.bash <non-negative integer>"
    exit 1
fi

enter=$1

for (( num = 1; num <= enter; num++ ))
do
    ((square=num*num))
    digit_number=$(echo -n $num | wc -c)
    digit_square=$(echo -n $square | wc -c)

    
    if (( $num == 1 ))
then
    first=1
    second=0
elif (( $num == 2 || $num == 3 || $num == 4 || $num == 5 || $num == 6 || $num == 7 || $num == 8 ))
then
    continue
    
else    
    ((digit_print_first=digit_square-digit_number+1))
    ((digit_print_second=digit_print_first-1))
    first=$(echo -n $square | cut -c$digit_print_first-$digit_square)
    first=$((10#$first))
   
    second=$(echo -n $square | cut -c1-$digit_print_second)
    second=$((10#$second))
fi
  #  echo " num: $num square: $square first: $first  second: $second"

    ((sum=first+second))    
    
    if (( $num == $sum ))
then
    echo "$num, square=$square, $first+$second=$sum"
fi    

done






