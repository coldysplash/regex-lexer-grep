#!/bin/sh

# Пользовательские литералы

SUFFIX="(u|U|l|L|ll|LL|ul|UL|uL|Ul|ull|ULL|uLL|Ull|llu|LLu|llU|LLU|z|Z|uz|UZ|uZ|Uz)?"
DEC="[1-9]+('[0-9]+)*$SUFFIX"
OCT="0[0-7]*$SUFFIX"
HEX="0x[0-9a-fA-F]+$SUFFIX"
ALLINT="[+-]?($DEC|$OCT|$HEX)"
ALLFLOAT="(0x((([0-9]|[a-f])*\.([0-9]|[a-f])+)|(([0-9]|[a-f])+\.?))(p[+-]?([0-9]|[a-f])+)?(f|l|F|L)?)|((([0-9]*\.[0-9]+)|([0-9]+\.?))(e[+-]?[0-9]+)?(f|l|F|L)?)"


PREFIX="(u8R|u|uR|U|UR|R|L|LR|u8)?"
STRING="$PREFIX\"(\\.|[^\"])*\""
PREFIX_C="(u8|u|U|L)?"
CHARS="$PREFIX_C'(\\\.+|.)'"

USERDEFLITERALS="(($ALLINT|$ALLFLOAT|$STRING|$CHARS)\s?)+_[a-zA-Z][_a-zA-Z0-9]*"

grep -E -o "$USERDEFLITERALS" "test-user-defines.txt"