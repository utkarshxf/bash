#!/bin/bash
#que1 - write a program to enter a number  and print the reverse of the number

echo "enter num:"
read num
rev=0
while ((num != 0))
do
rem=$((num%10))
rev=$((rev*10))
rev=$((rev+rem))
num=$((num/10))
done
echo $rev


#echo enter n
#read n
#num=0
#while [ $n -gt 0 ]
#do
#num=$(expr $num \* 10)
#k=$(expr $n % 10)
#num=$(expr $num + $k)
#n=$(expr $n / 10)
#done
#echo number is $num
