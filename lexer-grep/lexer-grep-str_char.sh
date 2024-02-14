#!/bin/sh

# Строковые литералы

PREFIX="(u8R|u|uR|U|UR|R|L|LR|u8)?"

STRING="$PREFIX\"(\\.|[^\"])*\""

# Символьные литералы

PREFIX_C="(u8|u|U|L)?"

CHARS="$PREFIX_C'(\\\.+|.)'"

# \\\ - ??

REGEXP="$CHARS"

grep -E -o "$REGEXP" "test-str_char.txt"