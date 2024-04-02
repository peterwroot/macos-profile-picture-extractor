#!/bin/bash
r=$((10000 + $RANDOM % 10000))
echo "$r"

dscl . -read /Users/$USER JPEGPhoto | tail -1 | xxd -r -p > ./pic$r.jpg