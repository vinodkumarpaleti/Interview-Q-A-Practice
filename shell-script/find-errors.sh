#!/bin/bash

# Check if the log file is provided as an argument
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <log_file>"
    exit 1
fi

# Assign the argument to a variable for readability
log_file=$1

# Check if the file exists
if [ ! -f "$log_file" ]; then
    echo "Log file not found!"
    exit 1
fi

# Define common error keywords to search for
error_keywords=("ERROR" "Error" "error" "FAIL" "Fail" "fail" "CRITICAL" "Critical" "critical" "EXCEPTION" "Exception" "exception")

# Search for each error keyword in the log file and print matching lines with line numbers
echo "Searching for error messages in $log_file..."
for keyword in "${error_keywords[@]}"; do
    grep -n "$keyword" "$log_file"
done

# Provide a summary if no errors were found
if [ $? -ne 0 ]; then
    echo "No error messages found in the log file."
else
    echo "Error search completed."
fi
