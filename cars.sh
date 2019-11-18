#!/bin/bash
# cars.sh
# Christopher Chang

while true
do
	echo "- type the number 1 to enter a new car"
	echo "- type the number 2 to display the list of cars"
	echo "- type the number 3 to quit and exit the program"
	read CHOICE

	case "$CHOICE" in
		1)
			echo "Enter year:"
			read YEAR
			echo "Enter make:"
			read MAKE
			echo "Enter model:"
			read MODEL
			echo "$YEAR:$MODEL:$MAKE" >> My_old_cars
			;;
		2)
			sort My_old_cars ;;
		3)
			echo "Goodbye."
			break;
			;;
	esac
done
