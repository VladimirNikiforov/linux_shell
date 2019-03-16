#!/usr/bin/env bash
# File: plier

function plier {
  p=1
  for x in $@
  do
    let p=$p*$x
  done
  echo $p
}
