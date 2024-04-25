#! /bin/bash

# Basic comparison operators
# Operator        Operation
# -gt             >
# -lt             <
# -ge             >=
# -le             <=
# -eq             ==
# -ne             !=

# this basic if decision follows the format:
# if [ condition ]
# then
# <commands>
# fi

# check if the first command line argument is greater than 100
if [ $1 -gt 100 ]
then
    # Display message
    echo Hey that\'s a large number
    # display present working directory
    pwd
fi

# display date to terminal
date

# nested if decision
if [ $1 -gt 100 ]
then
    # Display message
    echo Hey that\'s a large number
    # check if the first command line argument is an even number
    # Must use double parenthesis if you want to check the result
    # of a mathematical expression
    if (( $1 % 2 == 0 ))
    then
        # Display message
        echo And is also an even number
    fi
fi

# the if-else decision follows the format below:
# if [ condition ]
# then
# <commands>
# else 
# <commands>
# fi

# Check if there are 2 command line arguments
if [ $# -eq 2 ]
then
    # display lines of code in file along with the line numbers
    nl $2
else
    # display lines of code in text.txt along with line number
    nl ../Bash-Projects/text.txt
fi

# the if-else-if decision follows the format below:
# if [ condition ]
# then
# <commands>
# elif [ condition ]
# then
# <commands>
# else 
# <commands>
# fi

# Prompt the user for information and store it in
# variables
read -p 'Enter Age: ' age
read -p 'Did you receive an invitation (yes/no): ' invitation

# check if the input age is greater than 21
if [ $age -ge 21 ]
then 
    echo You are old enough to go to the party.
# Check if the input invitation is equal to yes
elif [ $invitation == 'yes' ]
then
    echo You have been invited to go to the party.
else 
    echo You may not go to the party.
fi

# Basic logical operators
# Operator        Operation
# &&              and
# ||              or

# check if the file provided as the second command line argument
# is executable AND has a size greater than 0
if [ -x $2 ] && [ -s $2 ]
then 
    echo This file is useful.
fi

# Prompt the user for information and store the input information
# into a variable
read -p 'Username: ' username

# Check if username is bob OR andy
if [ $username == 'bob' ] || [ $username == 'andy' ]
then
    # list file names in current directory along with file details
    ls -l
else 
    # list file names only
    ls
fi

