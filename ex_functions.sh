#!/usr/bin/env bash
# File: ex_functions.sh

function plier {
  p=1
  for x in $@
  do
    let p=$p*$x
  done
  echo $p
}

function isiteven {
  is_even=0
  if [[ $(($1 % 2)) -eq 0 ]]
  then
    echo 1
    let is_even=1
  else
    let is_even=0
    echo 0
  fi
}

function nevens {
  sum=0
  for x in $@
  do
    #isiteven $x
    let sum=sum+$(isiteven $x)
  done
  echo $sum
}

function howodd {
  sumall=0
  for x in $@
  do
    let sumall=sumall+1
  done
  var_up=$(nevens $@)
  var_down=$sumall
  echo "$var_up / $var_down" | bc -l
}

function fib {
  a=0
  b=1
  if [[ $1 -eq 0 ]]
  then
    arr=()
  elif [[ $1 -eq 1 ]]
  then
    arr=(0)
  else
    arr=($a $b)
  fi
  num=2
  while [[ $num -lt $1 ]]
  do
    let c=$(($a + $b))
    arr+=($c)
    let a=$b
    let b=$c
    let num=$num+1
  done
  echo ${arr[*]}
}

