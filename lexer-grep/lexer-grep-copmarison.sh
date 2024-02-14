#!/bin/sh

# Операторы сравнения

COMPARISON="(==|!=|<|>|<=|>=|<=>)"

REGEXP="$COMPARISON"

grep -E -o "$REGEXP" "test-comparison.txt"