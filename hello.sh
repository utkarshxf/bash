#!/bin/bash

# array argument
args=("&@")
#echo ${args[0]}${args[1]}${args[2]}
echo $@


#declear var
cons_name=utkarsh
cons_roll=21052633
cons_sec=cse25

echo $cons_name , $cons_roll , $cons_sec

#read comment
echo "enter NAME :"
read name
echo "enter ROLL NO :"
read roll
echo "enter SEC :"
read sec
echo "your name : $name , roll :$roll , sec :$sec"


#without any verable in read
echo "name without read comment"
read
echo "name : $REPLY"

#system ver
echo $BASH
echo $BASH_VERSION
echo $HOME
echo $PWD
echo $#
