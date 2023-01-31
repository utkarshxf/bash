#!/bin/bash
#que2 - write a program to enter a number and calculate the sum of the digit of the number 
echo "enter num:"
read num
rev=0
while ((num != 0))
do
rem=$((num%10))
rev=$((rev+rem))
num=$((num/10))
done
echo $rev

