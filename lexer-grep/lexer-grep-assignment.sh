#!/bin/sh

# Операторы присваивания

ASSIGNMENT="(\+|\-|\*|/|%|&|\||\^|<<|>>)?="

grep -E -o "$ASSIGNMENT" "test-Assignment.txt"