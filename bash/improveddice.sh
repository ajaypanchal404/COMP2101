#!/bin/bash
#
# this script rolls a pair of six-sided dice and displays both the rolls and the sum
#

# Improve this script by re-organizing it to:
#  put the number of sides in a variable which is used as the range for the random number
#  put the bias, or offset, for the RANDOM number in a variable (it is 1 for our purposes)
#     - you can think of this as the minimum value for the generated number
#  roll the dice using the variables for the range and bias i.e. RANDOM % range + bias
#  generate the sum of the dice
#  generate the average of the dice
#  display a summary of what was rolled, and what the result was
bias=1
sides=6

echo "Rolling..."
sleep 5

die1=$(( RANDOM % sides + bias))
die2=$(( RANDOM % sides + bias ))

sum=$(( die1 + die2 ))
average=$(echo $sum/2 | bc -l)

sleep 3
echo "Rolled $die1, $die2 for a $sum"
sleep 3
echo "Rolled $die1, $die2 and the average is $average"
