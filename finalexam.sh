#! /bin/bash

# Create an array to store the programming languages illustrated in 
# the table below
languages=("C" "C++" "R" "Bash" "Go" "Rust")

display_array () {
    echo ${languages[@]}
}

get_index () {
    value=$updatelang
    for i in "${!languages[@]}"; do
        if [[ "${languages[$i]}" = "${value}" ]]; then
            return "${i}";
        fi
    done
}

update_array () {
    if [[ ${languages[@]} =~ $updatelang ]]
        then
            get_index
            ind=$?
            # echo this is $ind
            languages[ind]="$newlang"
            echo $updatelang has been updated to $newlang
            display_array
        else 
            echo $updatelang doesn\t exist in the list of programming languages.
            display_array

        fi
}

addition_array () {
    languages[6]="$addlang"
    echo $addlang has been added.
    display_array
}


# Display the array of programming languages to the terminal.
echo List of Programming Languages
display_array

# Use the read command with -p argument to prompt the user 
# to input the letter U if he would like to update a language 
# in the list or input the letter A if he would like to add a 
# language to the list.
read -p 'Would you like to update a language in the list or add a new language to the list ( U or A ): ' selection

if [ $selection != 'U' ] && [ $selection != 'A' ]
then 
    echo Input must be U or A.
fi

if [ $selection == 'U' ]
then
    read -p 'Language to be updated: ' updatelang
    read -p 'New Language to be used to update '$updatelang': ' newlang
    update_array
fi

if [ $selection == 'A' ]
then
    read -p 'Language to be added: ' addlang
    addition_array
fi
