#que4 - write a program to enter a number and cheack weater it is amstrong or not

echo "enter num:"
read num
num1=num
rev=0
while ((num1!= 0))
do
rem=$((num1%10))
rev=$((rev+(rem*rem*rem)))
num1=$((num1/10))
done
if((rev==num))
then
	echo "amanstrong"
else
	echo "not a amstrong"
fi

