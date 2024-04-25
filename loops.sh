#! /bin/bash

# The basic while loop follows the format:
# while [ condition ]
# do
    # <commands>
# done

# Initialize counter variable
counter=10

# while the counter variable is greater than or equal to 1
while [ $counter -ge 1 ]
do
    # Display value in counter variable and a space
    # -n tells echo that a newline should not be appended to the 
    # end
    echo -n $counter ' '
    # Decrement the counter variable
    ((counter--))
done
echo blast off!

# the basic until loop follows the format:
# until [ condition ]
# do
# <commands>
# done

# The until loop executes the commands it's given
# until the condition becomes true

# Initialize counter variable
counter=10

# until the counter variable is less than 1
until [ $counter -lt 1 ]
do
    # Display value in counter variable and a space
    # -n tells echo that a newline should not be appended to the 
    # end
    echo -n $counter ' '
    # Decrement the counter variable
    ((counter--))
done
echo blast off!


# the basic loop follows the format
# for item in <list>
# do
# <commands>
# done

# For each item in a given list, the for loop
# performs the given set of commands

# initialize an array
numbers=(10 9 8 7 6 5 4 3 2 1 )

# for each number in numbers
for num in "${numbers[@]}"
do
    # Display value in counter variable and a space
    # -n tells echo that a newline should not be appended to the 
    # end
    echo -n $num ' '
done
echo blast off!

# for each number in a range
for num in {10..1}
do
    # Display value in counter variable and a space
    # -n tells echo that a newline should not be appended to the 
    # end
    echo -n $num ' '
done
echo blast off!

# for each number in a range
for num in {10..1}
do
    # Display value in counter variable and a space
    # -n tells echo that a newline should not be appended to the 
    # end
    echo -n $num ' '
    if [ $num -eq 5 ]
    then
        # break out of the loop
        break
    fi
done
echo blast off!

# for each number in a range
for num in {10..1}
do
    # check if the current num is even
    if [ $(( $num % 2 )) -eq 0 ]
    then
        # skip the current iteration of loop
        continue
    fi
    # Display value in counter variable and a space
    # -n tells echo that a newline should not be appended to the 
    # end
    echo -n $num ' '
done
echo blast off!
