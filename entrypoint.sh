#!/bin/bash

# run some preparatory steps, move data around etc. 
# we can also include different code paths in here

if [ "$1" = "train" ]; then
    python main.py
else
  echo "ARGS NOT RECOGNISED"
  exit 1
fi