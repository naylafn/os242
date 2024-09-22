#!/bin/bash

# Input and output file paths
input_file="inputSCRAP.txt"
output_file="outputSCRAP.txt"

# Check if the input file exists
if [[ ! -f "$input_file" ]]; then
  echo "Error: $input_file not found!"
  exit 1
fi

grep -oP '(?<= - )\d{10}' "$input_file" | sort -u > "$output_file"
