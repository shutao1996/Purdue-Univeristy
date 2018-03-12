#! /bin/bash

#----------------------------------
# $Author: ee364f06 $
# $Date: 2018-01-24 15:05:09 -0500 (Wed, 24 Jan 2018) $
#----------------------------------

function part_1 
{               

   sort -k4,4 -k6,6 -k1,1 -k2,2 -t "," people.csv | tail -n 9 

    return                      
}                               

function part_2
{              
    Arr=(a.txt b.txt c.txt d.txt e.txt)
    n=$(($RANDOM%5))
 #   echo $n
 #   echo "file: ${Arr[n]} "
    line=$(cat ${Arr[n]} | wc -l)
  #  echo "total line: $line"
    (( line_print=$line/2 ))
    (( even=$line%2 ))
    (( odd_print=$line_print+1))
#    echo $line_print
  #  echo $even
  #  echo $odd_print
    if [[ $even == 0 ]] #even print middle two
    then
  #      echo "even print:"
        (( line_2=$line_print+1 ))
        head -n $line_2 ${Arr[n]} | tail -n 2
    else
   #     echo "odd print:"
        head -n $odd_print ${Arr[n]} | tail -n 1
    fi

    return                     
}                              

function part_3
{
    # Fill out your answer here
    for File in src/*.c
    do
        #echo $File
        file=$(echo $File | cut -d. -f1)
               #cc –Wall –O3 –oFile.o –cFile.c 2>/dev/null
        file_p=$(echo $file | cut -d/ -f2)
               if gcc -Wall -Werror ${file}.c -o ${file}.o 2>/dev/null
        then 
            echo "${file_p}.c:  success"
        else
            echo "${file_p}.c:  failure"
        fi
    done 

    return
}

# To test your function, you can call it below like this:
#
part_1
part_2
part_3
