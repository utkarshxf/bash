#!/bin/bash
#que5 - write a program to find the sum of the folowing series 
#1+2+3+4...n;
#1+3+5+7...n;
#1-2+3-4+5-6...n;

echo "enter last:"
read num
rev=0
while ((num != 0))
do
rem=$((num%10))
rev=$((rev+rem))
num=$((num/10))
done
echo $rev

