#!/bin/bash

# find . -name "*.ck2.txt" | "  -exec bash -c 'cp "$1" "build/${1%.ck2.txt}".txt' - '{}' \;

for f in `find . -name "*.ck2.txt" | sed "s|^\./||"`
    do cp "$f" build/${f%.ck2.txt}.txt
done