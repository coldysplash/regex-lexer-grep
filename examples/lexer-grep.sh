#!/bin/sh

DIR="folly"

REGEXP="[_a-zA-Z][_a-zA-Z0-9]*"

for f in `find $DIR -name "*.cpp"`; do
    echo "*** File $f"
    grep -E -o "$REGEXP" $f
done
