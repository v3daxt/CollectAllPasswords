#!/bin/bash

# Initialize variables
main_folder=""
output_file=""

# Parse command-line arguments
while getopts ":f:o:" opt; do
  case $opt in
    f)
      main_folder="$OPTARG"
      ;;
    o)
      output_file="$OPTARG"
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
      exit 1
      ;;
  esac
done

# Check if required arguments are provided
if [ -z "$main_folder" ] || [ -z "$output_file" ]; then
  echo "Usage: $0 -f <main_folder> -o <output_file>"
  exit 1
fi

# To find all .txt files recursively in the main folder and its subfolders, then concatenate them into a single file
find "$main_folder" -type f -name '*.txt' -exec cat {} + > "$output_file"

echo "Combined wordlists into $output_file"
