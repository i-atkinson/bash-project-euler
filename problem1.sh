#!/bin/bash

if [ $# -eq 0 ]; then
	n=999
else
	n=$(($1 - 1))
fi

total=0

for i in $(seq 1 $n); do
	if [ $(($i % 5)) -eq 0 ] || [ $(($i % 3)) -eq 0 ]; then
	total=$(($total + $i))
	fi
done

echo $total
