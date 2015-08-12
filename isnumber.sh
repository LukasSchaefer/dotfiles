#!/bin/zsh

isnumber(){

if [ "$#" -ne 1 ]
	then
	print "You have to give ONE argument to check!" 
	return

	elif [ "$#" -eq 1 ] && [ "$1" -eq "$1" ] 2>/dev/null ;
		then
		print $1 "is a number!"

	else 
		print $1 "is not a number!"

fi

}