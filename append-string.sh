#!/bin/bash

# Check if an input file is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <input_file>"
    exit 1
fi

input_file=$1
output_file="output-appended-users.txt"

# Loop through each line in the input file
while IFS= read -r line; do
    # Append "@This.String.com" to each line read from the input text file
    new_line="${line}@This.String.com"
    
    # Output the result to the output file
    echo "$new_line" >> "$output_file"
done < "$input_file"

echo "Output written to $output_file"
