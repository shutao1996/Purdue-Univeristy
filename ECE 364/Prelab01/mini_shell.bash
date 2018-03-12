#! /bin/bash

#---------------------------------------
# $Author: ee364f06 $
# $Date: 2018-01-14 22:55:13 -0500 (Sun, 14 Jan 2018) $
#---------------------------------------

# Do not modify above this line.
finish=0
while (( $finish == 0 ))
do
    echo -n "Enter a command: "
    read command

    #command "hello"
    if [[ $command == "hello" ]]
    then
            echo "Hello $(whoami)"
            echo " "
    fi
  
    #command compile
    if [[ $command == "compile" ]]
    then 
        for File in *.c
        do
            file=$(echo $File | cut -d. -f1)

            gcc -Wall -Werror ${file}.c -o ${file}.o
            if (( $? == 0 ))
            then
               echo "Compilation succeeded for: ${file}.c" # ${File}.c
            else 
               echo "Compilation failed for: ${file}.c"   # ${File}.c
            fi
        done
        echo " " 
    fi 

    #command "run"
    if [[ $command == "run" ]]
    then 
        echo -n "Enter filename: "
        read filename
        echo -n "Enter arguments: "
        read arguments
      
        #check file exist
        if [[ ! -e $filename ]]
        then
            echo "Invalid filename"
            echo " "
            continue
        fi
    
        #check file executable
        if [[ ! -x $filename ]]
        then
            echo "Invalid filename"
            echo " "
            continue
        fi
        ./$filename $arguments
        echo " "
    fi
    
    #command "no command match"
    if [[ $command != "quit" && $command != "hello" && $command != "compile" && $command != "run" ]]
    then 
        echo "Error: Unrecognized input"
        echo " "
    fi
    
    #command "quit"
    if [[ $command == "quit" ]]
    then
        echo "Goodbye"
        echo " "
        (( finish=1 ))
    fi

done

exit 0
