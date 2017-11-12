#!/bin/bash
# set -x
echo hello
echo 'hi!'
echo $HOME
echo "My home directory is $HOME"
echo "My home directory is $(pwd)"
output=$(pwd)
echo "PWD is ${output}"
echo "PWD is $output"
# $@ is a variabe that stores everything after script name
# $1 first arg
# $2 second arg arg
echo "I saw $@ on the command line"
echo "I saw $1 on the command line"
echo "Enter a value:"
read userInput
echo "You entered $userInput"
echo "You entered hello.$userInput"
pwd
if [ -d /etc/sysconfig ]; then
    echo "That file is there and is a directory"
else
    echo "Fail"
fi

seq 10
seq 5 10
for i in $(seq 10)
do
    echo "Value is: $i"
done

for i in $(ls)
do
    echo "Value is: $i"
done

# Arithmatic operations 
echo $((3+3))
THING=$((4*56))
echo $THING

if [ $(($THING *45)) -eq 45 ]; then
    echo "voiala"
else
    echo "hhhjg"
fi

# set +x
