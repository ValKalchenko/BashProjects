#! /bin/bash

get_total_cost () {
    total=0
    count=0
    num=$1

    
    until [ $count -lt $num ]
    do
        ((total+=${cost[count]}))
        ((count+=1))
    done

    
    # You must update this return statement so that
    # it returns the computed total cost.
    return $total
}


item=(
        "Partridge in a Pear Tree" 
        "Turtle Dove" 
        "French Hen" 
        "Calling Bird" 
        "Gold Ring"
        "Geese a Laying"
        "Swans a Swimming"
        "Maides a Milking"
        "Ladies Dancing"
        "Lords A Leaping"
        "Piper Piping"
        "Drummer Drumming"
        )

    cost=(
        15
        27
        15
        14
        9
        25
        5
        7
        18
        14
        27
        26
        )

        read -p 'Please input a number ( 1 - 12 ): ' number

        if [ $number -lt 1 ] || [ $number -gt 12 ]
        then
            # Display message
            echo Number must be between 1 and 12.
        fi

        if [ $number -ge 1 ] || [ $number -le 12 ]
        then
            get_item=${item[$number - 1]}
            get_cost=${cost[$number - 1]}
            echo Number$'\t' $number
            echo Item$'\t' $get_item
            echo Cost$'\t' $ $get_cost
        fi

# Computes and returns the total cost of all items 
# starting with the first and continuing up 
# to and including the item at the input number.
get_total_cost () {
    total=0
    count=0
    num=$1

    
    until [ $count -lt $num ]
    do
        ((total+=${cost[count]}))
        ((count+=1))
    done

    
    # You must update this return statement so that
    # it returns the computed total cost.
    return $total
}
get_total_cost $number
tot=$?
echo Total$'\t' $ $tot