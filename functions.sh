#! /bin/bash

# functions may be created using two different formats:

# function_name () {
#   <commands>
#}

# function function_name () {
#   <commands>
#}

# the function definition (the actual function itself) must
# appear in the script before any calls to the function

# Simple function
print_something () {
    echo Hello
}
print_something
print_something

# function that takes an argument
print_argument () {
    # $1 is the argument
    echo Hello $1
}
print_argument Mars
print_argument Jupiter

# function that returns a value
return_something () {
    return 5
}
return_something
# the $? contains the return value of the previously called funciton
ret=$?
echo The previous function has a return value of $ret