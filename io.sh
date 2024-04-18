#! /bin/bash

# If you want to take input from the user, you use
# the read command, This command takes the input and
# saves it into a variable

# if you want to output something to the terminal,
# you use the echo command

# Display a prompt to the user
echo Hello, who am I talking to?
# Read user input into a variable
read varname
# Display a message to the user that includes the
# value stored in the variable
echo It\'s nice to meet you $varname

# you can alter the behavior of read with a variety of
# command line options
# the commonly used options are -p which allows you
# to specify a prompt and -s which makes the input
# silent.
# This can make it easy to ask for a username and
# passowrd combination 
read -p 'Username: ' username
read -sp 'Password: ' password
echo
echo Thank you $username we now have your login details.

# Display prompt to user
echo Enter filename

# read user input into variable
read file

# if the file exists 
if [ -e $file ]
then
    # display the files name
    echo $file exists in the directory
    # output the contents of the file
    cat $file
# if the file doesnt exist
else
    # create the file
    cat > $file
    # display message
    echo File created
fi

