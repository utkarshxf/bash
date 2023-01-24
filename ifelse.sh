#!/bin/bash

#max between 2 numbers
#write a program to chack weather no is positive or negative
#even or odd
#wap to check 
#year is leep year or not
#charcter is alphabet or not
#wap to input any alphabet and check weather it is verbal or conconent 
#write a program to input any charcter and check weather it is alphabet ,digit or special character 
#wap to input angles of a tringle and check weater tringle is valid or not 
#wap to input marks of 5 subject and calculate percentage or garde according to following - p>=90% grade a p>=80% grade b ... p>=50 grade e else grade f

#read comment
echo "enter 1num :"
read fs
echo "enter 2num :"
read sc
if((fs>=sc))
then
	echo "first num is bigger"
else
	echo "second num is bigger"
fi

#read comment
echo "enter 1num :"
read fs
if((fs>=0))
then
	echo "positive"
else
	echo "negative"
fi

#read comment
echo "enter 1num :"
read fs
if((fs%2==0))
then
	echo "even"
else
	echo "odd"
fi

#read comment
echo "enter year  :"
read fs
if((fs%4==0))
then
	echo "leap year"
else
	echo "not leap year"
fi

#read comment
echo "enter any character :"
read ch
if(((ch >= 'a' && ch <= 'z') || (ch >= 'A' && ch <= 'Z')))
then
	echo "alphabet"
else
	echo "not an alphabet"
fi

echo "enter any alphabet :"
read ch
if((ch == 'a' || ch == 'e' || ch == 'i'|| ch == 'o'|| ch == 'u'||ch == 'A' || ch == 'E' || ch == 'I'|| ch == 'O'|| ch == 'U'))
then
	echo "vowel"
else
	echo "consounet"
fi

#read comment
echo "enter any character :"
read ch
if(((ch >= 'a' && ch <= 'z') || (ch >= 'A' && ch <= 'Z')))
then
	echo "alphabet"
elif((ch = '~' || ch = '@' || ch = '#'|| ch = '$'|| ch = '%'||ch = '^' || ch = '&' || ch = '*'|| ch = '&'|| ch = '*'|| ch = '(' || ch = ')'|| ch = '-'|| ch = '+'|| ch = '{'|| ch = '}'|| ch = '|'|| ch = '' || ch = ')'|| ch = '-'|| ch = '+'))
then
	echo "special character"

else
    echo "number"
fi

#read comment
echo "enter side:"
read a
echo "enter 2side :"
read b
echo "enter 3side :"
read b
if((a+b+c==180))
then
	echo "tringle"
else
	echo "not tringle"
fi

echo "enter marks:"
read ch
if(((ch >= 90 && ch <= 100))
then
	echo "A"
if(((ch >= 80 && ch <= 90))
then
	echo "B"
if(((ch >= 70 && ch <= 80))
then
	echo "C"
if(((ch >= 60 && ch <= 70))
then
	echo "D"
if(((ch >= 50 && ch <= 60))
then
	echo "E"
else
    echo "fail"
fi


