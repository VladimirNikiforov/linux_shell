#!/usr/bin/env bash
# File: math.sh

expr 5 + 2
expr 5 - 2
expr 5 \* 2
expr 5 / 2
expr 10 % 3
echo "22 / 7" | bc -l
echo "4.2 * 9.15" | bc -l
echo "(6.5 /0.5) + (6 * 2.2)" | bc -l
echo "7 / 3" | bc -l
echo "7 / 3" | bc
