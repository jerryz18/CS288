#!/bin/bash

DATE=$(date +"%m/%d/%y %I:%M %p")

pizza() 
{
    for item in $1;
    do
        if [ -d "$item" ]
        then
            pizza "$item/*"    
        elif [[ $item == *.py ]]
        then
            chars=$(head -c 3 $item)
            if [[ chars != "\"\"\"" ]] || [[ chars != "'''" ]]
            then
                file=$(basename $item)
                sed -i "1i \"\"\"\n$USER\nCS288 003\n$DATE\n$file\n\"\"\"\n" $item
            fi
        fi 
    done
}

pizza $1