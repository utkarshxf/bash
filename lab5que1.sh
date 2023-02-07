#!/bin/bash
#wap to find the sum of all the element

echo "enter num:"
read n
sum=0
for((i=0;i<n;i++))
do
  echo "the $i number"
  read a[$i]
  sum=$((sum+a[$i])) 
done
echo "the sum is $sum"
