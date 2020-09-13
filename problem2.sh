#!/bin/bash

fib_1=1
fib_2=2
fib_temp=1
fib_max=4000000
total=0

while [ $fib_2 -lt $fib_max ]; do
	if [ $(($fib_2 % 2)) -eq 0 ]; then
		total=$(($total + $fib_2))
	fi
	fib_temp=$fib_1
	fib_1=$fib_2
	fib_2=$(($fib_2 + $fib_temp))
	
done
echo $total
