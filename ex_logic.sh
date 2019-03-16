#!/usr/bin/env bash
# File: ex_logic.sh

#echo "Input string with capital letter:"
#read string
if [[ $1 =~ ^[A-Z].* ]]
then
  echo "Good. Capital letter at first place"
else
  echo "Wrong. Need Capital letter at first place"
fi

if [[ $(($1 % 2)) -eq 0 ]]
then
  echo "even"
else
  echo "odd"
fi

if [[ ($1 =~ [0-9]+) && ($2 =~ [0-9]+) ]]
then
  echo $(($1+$2))
else
  echo "$1 $2"
fi

if [[ $(date +%u) -eq 6 ]]
then
  echo "Thanks Moses it's Saturday"
fi
