#!/usr/bin/env bash

while read p; do
  echo "$p"
  head -3 $p
done <list.txt