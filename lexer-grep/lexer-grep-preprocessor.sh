#!/bin/sh

# Директивы препроцессора

PREPROCESSORDIR="#(if|ifdef|ifndef|else|elif|elifdef|elifndef|endif|define|undef|include|error|warning|line|pragma)+"

grep -E -o "$PREPROCESSORDIR" "test-preprocessor.txt"