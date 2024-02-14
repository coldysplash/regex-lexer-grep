#!/bin/sh

# Комментарии

ONELINECOM="//.+"
#MULTILINECOM="/\\*[^*]*\\*+([^/*][^*]*\\*+)*/" 

ALLCOMMENTS="($ONELINECOM|$MULTILINECOM)"

grep -E -o "$ALLCOMMENTS" "test-comments.txt"