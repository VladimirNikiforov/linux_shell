#!/usr/bin/env bash
# File: ex_programs.sh

function range {
  if [[ $1 -lt 0 ]]
  then
    eval echo {$1..0}
  else
    eval echo {0..$1}
  fi
}

function extremes {
  min=$1
  max=$1
  for x in $@
  do
    if [[ $min -gt $x ]]
    then
      let min=$x
    fi
    if [[ $max -lt $x ]]
    then
      let max=$x
    fi
  done
  echo $min $max
}
