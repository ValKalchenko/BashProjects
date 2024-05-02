#! /bin/bash

# Use a while loop to through the numbers as defined by start and stop
# and for each number display to the terminal a message indicating if
# the number is odd or even. 
odd_or_even () {
    start=$1
    stop=$2
    i=$start
    while [ $i -le $stop ]
    do
        if (( $i % 2 == 0 ))
        then
            echo $i is even
        else
            echo $i is odd
        fi
        (( i++ ))
    done
}

# Use read command with -p argument to prompt
# user for input number start and stop numbers. 
read -p 'Please input starting number (1 - 10): ' start
read -p 'Please input stopping number (1 - 10): ' stop

# Validate start and stop numbers
if [ $start -lt 1 ] || [ $start -gt 10 ]
then
    echo 'Starting number must be between 1 and 10.'
elif [ $stop -lt 1 ] || [ $stop -gt 10 ]
then
    echo 'Stopping number must be between 1 and 10.'
elif [ $start -ge $stop ]
then
    echo 'Starting number must be less than stopping number.'
else
    # Call function giving it input start and stop numbers.
    odd_or_even $start $stop
fi