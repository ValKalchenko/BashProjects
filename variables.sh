#! /bin/bash

# when referring to or reading a variable , you
# place a $ before the variable name

# when setting a value in a variable, you leave
# out the $ 

# set the value of two integer variables
n1=1
n2=2

# set the value of a third variable by referencing 
# previous two variables
sum=$(($n1+$n2))

# Display values in all variables to terminal
echo $n1 $n2 $sum 

# set the value of two string variables
# quotes arent needed when setting only a single 
# word in a variable
first_name=Valerie
last_name=Kalchenko
name="Valerie Kalchenko"

# set the value in another string variables by
# referencing the values in the previous string variables
# double quotes allow you to include variables
# within the setting of another variable
full_name="$first_name $last_name"

# Single quotes treat every character literally
literal_full_name='$first_name $last_name'

# Display value in the string variables to terminal
echo $full_name $literal_full_name $name

# Set the value in a variable as the path to a directory
sampledir=../BashProjects

# List the contents of the directory in the variable
ls $sampledir