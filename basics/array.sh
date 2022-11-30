#!/bin/bash
myArray=("This" "is" "an" "array.")

for str in ${myArray[@]}
do
  echo -n "$str "
done
echo ""

for i in ${!myArray[@]}
do
  echo "element $i is ${myArray[$i]}"
done