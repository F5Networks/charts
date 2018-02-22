#!/bin/bash

pwd
src_dir="src/incubator"
num_failures=0

for chart_source in $(ls $src_dir); do
  echo $src_dir/$chart_source
  helm lint --strict $src_dir/$chart_source && rc=$? || rc=$?
  echo $rc
  if (( $rc > 0 )); then
    num_failures=$(($num_failures + 1))
  fi
done

if (( $num_failures > 0 )); then
  echo "$num_failures charts failed linting."
  exit 1
else
  exit 0
fi

