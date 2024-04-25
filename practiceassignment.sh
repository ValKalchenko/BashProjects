#! /bin/bash

factorial () {
    counter=$1
    factorial=1
    while [ $counter -gt 0 ]
    do
        factorial=$(( $factorial * $counter ))
        counter=$(( $counter - 1 ))
    done
    # You must update this return statement so that
    # it returns the computed factorial.
    return $factorial
}

# You must update this call to the factorial function
# so that it gives the function an argument like 5, 4, 
# or 3.
factorial 5
fact=$?
echo the factorial of 5 is $fact
factorial 4
fact=$?
echo the factorial of 4 is $fact
factorial 3
fact=$?
echo the factorial of 3 is $fact