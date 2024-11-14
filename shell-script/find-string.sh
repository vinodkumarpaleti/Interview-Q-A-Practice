#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <file_name> <search_string>"
    exit 1
fi

# Assign arguments to variables for readability
file_name=$1
search_string=$2

# Check if the file exists
if [ ! -f "$file_name" ]; then
    echo "File not found!"
    exit 1
fi

# Use grep to search for the string and print matching lines
grep -n "$search_string" "$file_name"

# Check if grep found any matches
if [ $? -ne 0 ]; then
    echo "String '$search_string' not found in the file."
else
    echo "Search completed."
fi
