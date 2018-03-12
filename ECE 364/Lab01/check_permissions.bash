#! /bin/bash

#---------------------------------------
# $Author: ee364f06 $
# $Date: 2018-01-17 15:10:45 -0500 (Wed, 17 Jan 2018) $
#---------------------------------------

# Do not modify above this line.

if (( $# != 1 ))
then
    echo "Usage: check_permissions.bash <input file/directory>"
fi

filename=$1

perm=$(ls -ld $filename)

first=$(echo $perm | cut -c1)

if [[ $first == $"-" ]]
then
    echo "$filename is an ordinary file"
    echo " "
else
    echo "$filename is a directory"
    echo " "
fi

echo "Owner Permissions: "
echo " "

second_1=$(echo $perm | cut -c2)
second_2=$(echo $perm | cut -c3)
second_3=$(echo $perm | cut -c4)

if [[ $second_1 == $"r" ]]
then
    echo "$filename is readable"
else
    echo "$filename is not readable"
fi

if [[ $second_2 == $"w" ]]
then
    echo "$filename is writable"
else
    echo "$filename is not writable"
fi

if [[ $second_3 == $"x" ]]
then
    echo "$filename is executable"
else
    echo "$filename is not executable"
fi

echo " "
echo "Group Permissions: "
echo " "

third_1=$(echo $perm | cut -c5)
third_2=$(echo $perm | cut -c6)
third_3=$(echo $perm | cut -c7)

if [[ $third_1 == $"r" ]]
then
    echo "$filename is readable"
else
    echo "$filename is not readable"
fi

if [[ $third_2 == $"w" ]]
then
    echo "$filename is writable"
else
    echo "$filename is not writable"
fi

if [[ $third_3 == $"x" ]]
then
    echo "$filename is executable"
else
    echo "$filename is not executable"
fi

echo " "
echo "Others Permissions: "
echo " "

last_1=$(echo $perm | cut -c8)
last_2=$(echo $perm | cut -c9)
last_3=$(echo $perm | cut -c10)

if [[ $last_1 == $"r" ]]
then
    echo "$filename is readable"
else
    echo "$filename is not readable"
fi

if [[ $last_2 == $"w" ]]
then
    echo "$filename is writable"
else
    echo "$filename is not writable"
fi

if [[ $last_3 == $"x" ]]
then
    echo "$filename is executable"
else
    echo "$filename is not executable"
fi






