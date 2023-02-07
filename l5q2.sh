#!/bin/bash
#wap to find even and odd number in an array

echo "enter num:"
read n
sum=0
j=0
k=0
for((i=0;i<n;i++))
do
  echo "enter $i number"
  read a[$i]
  if((a[$i]%2 == 0))
  then
    e[$j]=$((a[$i]))
    j=$(($j+1))
  else
    o[$k]=$((a[$i]))
    k=$(($k+1))
   fi
done
echo "even numbers are :"
for i in "${e[@]}"
do 
  echo $i
done
echo "odd numbers are :"
for i in "${o[@]}"
do 
  echo $i
done
