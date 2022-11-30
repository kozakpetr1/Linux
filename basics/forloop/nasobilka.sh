#!/bin/bash
for (( i=2; i<=10; i++ ))
do
    for ((j=1; j<=10; j++ ))
    do
        k=$(($i*$j))
        # echo -n "${k} "
        printf "%4d" $k
    done
    echo
done

for i in {2..10}
do
    for j in {1..10}
    do
        k=$(($i*$j))
        # echo -n "${k} "
        printf "%4d" $k
    done
    echo
done

for i in 2 3 4 5 6 7 8 9 10
do
    for j in 1 2 3 4 5 6 7 8 9 10
    do
        k=$(($i*$j))
        # echo -n "${k} "
        printf "%4d" $k
    done
    echo
done
