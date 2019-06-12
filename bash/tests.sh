#!/bin/bash

test -e /etc/resolv.conf && echo "/etc/resolv.conf exists" || echo "/etc/resolv.conf does not exist"

[ -d /tmp ] && echo "/tmp is a directory" || echo "/tmp is not a directory"

[ /etc/hosts -nt /etc/resolv.conf ] && echo "/etc/hosts is newer than /etc/resolv.conf"
[ /etc/hosts -ot /etc/resolv.conf ] && echo "/etc/resolv.conf is newer than /etc/hosts"
[ ! /etc/hosts -nt /etc/resolv.conf -a ! /etc/hosts -ot /etc/resolv.conf ] && echo "/etc/hosts is the same age as /etc/resolv.conf"

firstNumber=4
secondNumber=7

[ $firstNumber -eq $secondNumber ] && echo "The two numbers are the same"
[ $firstNumber -ne $secondNumber ] && echo "The two numbers are not the same"
[ $firstNumber -lt $secondNumber ] && echo "The first number is less than the second number"
[ $firstNumber -gt $secondNumber ] && echo "The first number is greater than the second number"

[ $firstNumber -le $secondNumber ] && echo "The first number is less than or equal to the second number"
[ $firstNumber -ge $secondNumber ] && echo "The first number is greater than or equal to the second number"

[ -v USER ] && echo "The variable SHELL exists"

a=1
b=01
[ $a = $b ] && echo "$a is alphanumerically equal to $b" || echo "$a is not alphanumerically equal to $b"
