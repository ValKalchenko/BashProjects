#! /bin/bash

# values must be enclosed in parenthesis and separated by spaces

# retrieval of a value relies on using the index just as it does
# in other programming languages. The first index number is 0

# create an array of 5 strings
grades=("A" "B" "C" "D" "F")

# display the values in the first and fifth elements
echo ${grades[0]}
echo ${grades[4]}

# Display all the values in the array
echo ${grades[@]}

# Display the length of the array
echo "${#grades[@]}"

# Add a six element to the array
grades[5]="F-"

# update the value in the third element
grades[2]="C-"

# Display all the values in the array
echo ${grades[@]}

# Display the length of the array
echo "${#grades[@]}"

# loop through array
for grade in "${grades[@]}"
do
    # display current elements
    echo $grade
done