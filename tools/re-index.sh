#!/bin/bash
set -ex

baseurl="https://f5networks.github.io/charts"
to_index=(incubator stable)

curdir=$(basename $(pwd))

if [ $curdir != "charts" ]; then
  echo "[ERROR]  Re-index tool expects to be run from repo base directory."
  exit 1
fi

for target in "${to_index[@]}"; do
  helm repo index $target --url $baseurl/$target --merge $target/index.yaml
done
