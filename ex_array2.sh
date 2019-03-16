#!/usr/bin/env bash
# File: ex_array2.sh

array1=(el1 el2 el3)
array2=(el11 el22 el33 el44 el55)

echo $((${#array1[*]}+${#array2[*]}))
