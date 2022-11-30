#!/bin/bash
greatestNum=$1
for i in $@
do
    if (($i>$greatestNum))
    # if [ $i -gt $greatestNum ]
    then
        greatestNum=$i
    fi
done
printf "Greatest number: %d.\n" $greatestNum
