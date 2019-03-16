#!/usr/bin/env bash
# File: ex_loops.sh

i=0
while [[ $i -lt 1 ]]
do
  for i in {0..20}
  do
    if [[ $i -lt 3 ]] || [[ $i -gt 8 ]]
    then
      echo $i
    fi
  done
done
