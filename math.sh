#!/bin/zsh

source ~/scripts/isnumber.sh

math() {

if [ "$#" -eq 0 ] 
	then
	print "No arguments found! Please enter the wished operators. For help type "help""

	elif [ "$1" = "help" ]
		then
		print "
		Welcome to math.
		This script provides basic calculator functionality inside 
		the shell.
		Operators are given as arguments of the general math-function.
		Operators are:
		'sum' used for addition of at least 2 numbers
		'sub' used for subtraction of at least 2 numbers
		'mul' used for multiplication of at least 2 numbers
		'div' used for division of at least 2 numbers"

	elif [ "$1" = "quit" ] || [ "$1" = "Quit" ] || [ "$1" = "Exit" ] || [ "$1" = "exit" ] || [ "$1" = "Q" ] || [ "$1" = "q" ]
		then
		print "You left the math-function. Hopefully see you soon again :-)"
		return

	elif [ "$1" = "Sum" ] || [ "$1" = "sum" ]
		then
		
		if [ "$#" -le 2 ]
			then
			print "Only one argument given! You need at least 2 numbers.
			For further help type "help""

		else	
			ALLNUMBER = true
			
			for ARG in $[1-999]
			do 
			isnumber $ARG 1>OUTPUT
				if [ "$OUTPUT" = $ARG "is not a number!" ] 
					then
					ALLNUMBER = false
				fi
			done

			if [ $ALLNUMBER = false ]
				then
				print "At least one given argument was not a number!
				Please check your arguments."

			else 
				print "calulate"


		fi

		
fi

}