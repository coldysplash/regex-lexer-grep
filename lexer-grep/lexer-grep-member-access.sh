#!/bin/sh

# Операторы доступа

CXXIDENTIFIERS="[_a-zA-Z0-9]*"

MEMBERACCESS="([*&]+$CXXIDENTIFIERS)|($CXXIDENTIFIERS?\[$CXXIDENTIFIERS\])|(\.\*?$CXXIDENTIFIERS|->\*?$CXXIDENTIFIERS)"

grep -E -o "$MEMBERACCESS" "test-member-access.txt"