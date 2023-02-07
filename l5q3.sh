#!/bin/bash
#wap to remove duplicate element in an array

echo "enter size:"
read n

for((i=0;i<n;i++))
do
  echo "enter $i number"
  read a[$i]
done
j=0
for((i=j+1;i<n;i++))
do
  if((a[$i] == a[$j]))
  then
    a[$i]=(($0))
   fi
done
for i in "${a[@]}"
do 
  echo $i
done

