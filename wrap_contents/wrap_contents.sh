#!/bin/bash

if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <contents_file> <specifier> <output_file>"
    exit 1
fi

contents_file="$1"
specifier="$2"
output_file="$3"

header_file="${specifier}_header.html"
footer_file="${specifier}_footer.html"

if [[ ! -f "$contents_file" || ! -f "$header_file" || ! -f "$footer_file" ]]; then
    echo "Error: One or more required files do not exist."
    exit 1
fi

cat "$header_file" "$contents_file" "$footer_file" > "$output_file"

echo "Successfully created $output_file by wrapping $contents_file with $header_file and $footer_file."
