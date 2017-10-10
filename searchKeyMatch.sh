#!/bin/bash

# 'var' is the input parameter $1
# The second $1 refers to the first column of csv
# The matching '~' means partial match
awk -v var="$1" -F, '$1 ~ var' content.csv

