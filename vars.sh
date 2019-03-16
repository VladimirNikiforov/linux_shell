#!/usr/bin/env bash
# File: vars.sh

var1=2
var2=3
var3=$var1+$var2
echo $var3

var1="X1"
var2="X2"
var3="$var1 $var2"
echo $var3

echo "$1 * $#" | bc -l

math_lines=$(cat math.sh | wc -l)
echo $math_lines

echo "Script arguments: $@"
echo "First arg: $1. Second arg: $2."
echo "Number of arguments: $#"
