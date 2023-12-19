#!/bin/bash

# Function to display help menu
display_help() {
    echo "Usage: $0 -f <main_folder> -o <output_file>"
    echo "Options:"
    echo "  -f   Specify the main folder containing wordlists and subfolders."
    echo "  -o   Specify the output file name."
    echo "  -h   Display this help menu."
    exit 0
}

# Banner
echo -e "\033[1;35m"
echo "    █████████           ████  ████                     █████      █████████   █████       █████         "
echo "  ███░░░░░███         ░░███ ░░███                    ░░███      ███░░░░░███ ░░███       ░░███          "
echo " ███     ░░░   ██████  ░███  ░███   ██████   ██████  ███████   ░███    ░███  ░███        ░███          "
echo "░███          ███░░███ ░███  ░███  ███░░███ ███░░███░░░███░    ░███████████  ░███        ░███          "
echo "░███         ░███ ░███ ░███  ░███ ░███ ░███░███ ░░░   ░███     ░███░░░░░███  ░███        ░███          "
echo "░░███     ███░███ ░███ ░███  ░███ ░███ ░███░███  ███  ░███ ███ ░███    ░███  ░███      █ ░███      █   "
echo " ░░█████████ ░░██████  █████ █████░░██████ ░░██████   ░░█████  █████   █████ ███████████ ███████████   "
echo "  ░░░░░░░░░   ░░░░░░  ░░░░░ ░░░░░  ░░░░░░   ░░░░░░     ░░░░░  ░░░░░   ░░░░░ ░░░░░░░░░░░ ░░░░░░░░░░░    "
echo "                                                                                           By v3daxt "
echo -e "\033[0m"

# Initialize variables
main_folder=""
output_file=""

# Parse command-line arguments
while getopts ":f:o:h" opt; do
  case $opt in
    f)
      main_folder="$OPTARG"
      ;;
    o)
      output_file="$OPTARG"
      ;;
    h)
      display_help
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
  echo "Error: Both -f and -o options are required."
  display_help
fi

# To find all .txt files recursively in the main folder and its subfolders, then concatenate them into a single file
find "$main_folder" -type f -name '*.txt' -exec cat {} + > "$output_file"

echo "Combined wordlists into $output_file"
