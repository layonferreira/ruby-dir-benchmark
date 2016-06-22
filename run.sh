#!/usr/bin/env bash
set -e

rubies=( "2.1.7" "2.1.8" "2.1.9" "2.2.0" "2.2.1" "2.2.2" "2.2.3" "2.2.4" "2.3.0" "2.4.0-preview1")

for i in "${rubies[@]}"
do
  echo "====================================================="
  echo "$i: benchmarking"
  echo "====================================================="
  rvm use $i
  ruby benchmark.rb
done
