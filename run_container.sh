#!/bin/bash

set -euo pipefail

docker build -t temp-container .

docker run \
    -p 5678:5678 \
    temp-container \
    train