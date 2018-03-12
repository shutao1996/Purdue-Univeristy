#! /bin/bash

#---------------------------------------
# $Author: ee364f06 $
# $Date: 2018-01-21 22:18:42 -0500 (Sun, 21 Jan 2018) $
#---------------------------------------

# Do not modify above this line.

if [[ $# != 1 ]]
then
    echo "Usage: ./sort.bash <filename>"
    exit 1
elif [[ ! -e $1 ]]
then
    echo "Error: $1 does not exist."
    exit 2
fi

echo "The 5 fastest CPUs: "
sort -k5 -n -t, $1 | head -n 5 
echo " "

echo "The 3 most efficient CPUs: "
sort -k4 -n -t, $1 | head -n 3
echo " "

echo "The CUPs with cache size 4: "
compar=4
#print each sorted line to a temp file by redirection
echo "$(sort -k5 -n -t, $1)" > temp

while read line
do  #find the compar number by if statement
    if (( $(echo $line | cut -d, -f2) == $compar ))
    then
        echo "$line"
    fi
done < temp
echo " "

read -p "Enter a value for n: " num
echo "The $num slowest CPUs: "
sort -k5 -r -n -t, $1 | head -n $num
echo " "

echo "$(sort -k1,1 -k4,4 -t, $1)" > sorted_CPI.txt
echo " "

exit 0

