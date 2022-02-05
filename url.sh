#!/bin/bash

url=$1
if curl --output /dev/null --silent --head --fail "$url"; then
  printf '%s\n' "$url success"
else
  printf '%s\n' "$url failure"
fi
