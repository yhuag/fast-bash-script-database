#!/bin/bash

# Replace first input parameter $1's all ','
# with ' '. This is for parsing.
func_replace_period_with_space()
{
 echo "${1//,/ }"
}

# Assign key and value
key=$(func_replace_period_with_space $1)
val=$(func_replace_period_with_space $2)

# Append pair to csv
echo "$key,$val" >> content.csv
