#! /bin/bash

# A dictionary is a collection that stores its elements 
# in key-value pairs

# the keys must be enclosed in square brackets

# retrieval of a value relies on using the key just a it does
# in other programming languages

# declare a dictionary 
declare -A user

# place two key-value pairs in the dictionary
user=( ["name"]="Valerie Kalchenko" ["age"]=22 ["email"]="kalchenkov@chc.edu")

# display the value in the name key
echo "${user[name]}"

# display the value in the age key
echo "${user[age]}"

# display the length of the dictionary
echo "${#user[@]}"

# loop through dictionary
for key in "${!user[@]}"
do
    # display current element
    echo $key $'\t' ${user[$key]}
done