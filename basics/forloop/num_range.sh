#!/bin/bash

echo "For loop s číselným rozsahem:"
sum=0
for i in 0 1 2 3 4 5 6
do
    sum=$(($sum+$i))
done
echo $sum

read -n 1 -s -r -p "Stiskni klávesu pro pokračování ..."; echo

echo "For loop s číselným rozsahem pomocí {START..END} notace:"
sum2=0
for i2 in {0..6}
do
    sum2=$(($sum2+$i2))
done
echo $sum2

read -n 1 -s -r -p "Stiskni klávesu pro pokračování ..."; echo

echo "For loop s číselným rozsahem pomocí {START..END..STEP} notace:"
sum3=0
for i3 in {0..6..2} 
do
    sum3=$(($sum3+$i3))
done
echo $sum3

read -n 1 -s -r -p "Stiskni klávesu pro pokračování ..."; echo

echo "For loop s číselným rozsahem pomocí traverzování pole hodnot:"
sum4=0
arr=(0 1 2 3 4 5 6)
for i4 in ${arr[@]}
do
    sum4=$(($sum4+$i4))
done
echo $sum4

read -n 1 -s -r -p "Stiskni klávesu pro pokračování ..."; echo

echo "For loop traverzováním souborů:"
for f in foo1 foo2 foo3
do
    cat $f 
done

read -n 1 -s -r -p "Stiskni klávesu pro pokračování ..."; echo

echo "For loop traverzováním názvů souborů v adresáři:"
if [ ! -f etc-files ]
then
    for file in /etc/*
    do
        echo "${file}" >> etc-files
    done
fi

read -n 1 -s -r -p "Stiskni klávesu pro pokračování ..."; echo

echo "For loop traverzováním výstupu příkazu:"
if [ ! -f final-foo ]
then
    for out in $(cat foo1 foo2 foo3)
    do
        echo "$out" >> final-foo
    done
fi
