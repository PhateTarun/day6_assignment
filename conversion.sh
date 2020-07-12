#!/bin/bash -x

function degree2celcius(){
	degree=$1;
	min_temp=0;
	max_temp=100;
	celcius=`expr "($degree-32)*5/9" | bc -l`
	if [ $((`echo $celcius $min_temp $max_temp | awk  '{if ($1 -ge $2 && $1 -le $3) print 1}'`)) ]
	then
		echo "$celcius"
		return 
	else
		echo "celcius out of range 0-100"
		return
	fi
}

function degree2fahrenite(){
	degree=$1;
	min_tmep=32;
	max_temp=212;

	fahrenite=`expr "($degree*9/5)+32" | bc -l`
	if [ $((`echo $fahrenite $min_temp $max_temp | awk '{if ($1 -ge $2 && $1 -le $3) print 1}'`)) ]
  	then
		echo "$fahrenite"
		return 
   	else
      		echo "Fahrenite out of range 32-212"
      		return
   	fi
}
#constants
deg2C=1;
deg2F=2;
#input
read -p "enter 1 for deg2C and 2 for def2F:" choice
read -p "Enter value in degree: " degree
case $choice in
	$deg2C)
			degree2celcius $degree 
			;;
	$deg2F)
			degree2fahrenite $degree
			;;
	*)
			echo "Not a valid choice"
			;;
esac

