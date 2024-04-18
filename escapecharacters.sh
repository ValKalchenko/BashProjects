#! /bin/bash

# escape characters are contained in single-quotes

# they must be proceeded with a backslash

# \n New Line
# \t horizontal tab

first_name=Valerie
last_name=Kalchenko
full_name="$first_name $last_name"
echo $full_name

# Set the value in a fourth string variable and
# include the new line escape character
# double quotes arent needed when an escape character
# is included in the value being set
new_line_full_name=$first_name$'\n'$last_name

# Display the fourth variable to the terminal
echo "$new_line_full_name"

# Set the value in a fifth string variable and
# include the tab escape character
tab_full_name=$first_name$'\t'$last_name

# Display the fifth variable to the terminal
echo "$tab_full_name"

