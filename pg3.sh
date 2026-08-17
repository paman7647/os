#!/bin/bash
# Aman Kumar Pandey
# To generate prime numbers between two limits
echo "Enter lower limit"
read l
echo "Enter upper limit"
read u

for (( i=l; i<=u; i++ )); do
    (( i < 2 )) && continue
    for (( j=2; j*j<=i; j++ )); do
        (( i % j == 0 )) && continue 2
    done
    printf "%d " "$i"
done
echo