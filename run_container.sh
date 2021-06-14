#!/bin/bash

set -euo pipefail

docker build -t temp-container .

docker run \
    -p 5678:5678 \
    -v $PWD:/data/export \
    temp-container

docker image rm -f temp-container