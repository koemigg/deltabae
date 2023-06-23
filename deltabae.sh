#!/usr/bin/env zsh

# Set default values
output_dir="./tmp"
html_name="diff"
file1=""
file2=""

# Parse command line arguments
while getopts 'f:s:o:n:' flag; do
  case "${flag}" in
    f) file1="${OPTARG}" ;;
    s) file2="${OPTARG}" ;;
    o) output_dir="${OPTARG}" ;;
    n) html_name="${OPTARG}" ;;
    *) error "Unexpected option ${flag}" ;;
  esac
done

# Check if file1 and file2 are specified
if [ -z "$file1" ] || [ -z "$file2" ]; then
    echo "Both -f (file1) and -s (file2) options must be specified."
    exit 1
fi

# Check if file1 and file2 exist
if [ ! -e "$file1" ] || [ ! -e "$file2" ]; then
    echo "One or both of the files specified do not exist."
    exit 1
fi

# Check if directory should be created
if [ ! -z "$output_dir" ] ; then
    mkdir -p $output_dir
fi

# Run delta and ansifilter
delta $file1 $file2 --side-by-side --syntax-theme="Nord" --zero-style="#333" | ansifilter --html --encoding "utf-8" > "$output_dir/$html_name.html"

