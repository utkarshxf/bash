#!/bin/bash
#que3 - writa a program to enter a number and check weater it is palandrome or not
echo "enter num:"
read num
num1=$((num))
rev=0
while ((num1 != 0))
do
rem=$((num1%10))
rev=$((rev*10))
rev=$((rev+rem))
num1=$((num1/10))
done
if((rev==num))
then
	echo "palandrome"
else
	echo "not a palandrome"
fi
