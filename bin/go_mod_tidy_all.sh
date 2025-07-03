#!/bin/bash
# set -x

for dir in src/*; do
  # echo "tidy $dir"
  cd $dir
  pwd
  go mod tidy
  cd -
done

for dir in pkg/*; do
  # echo "tidy $dir"
  cd $dir
  pwd
  go mod tidy
  cd -
done