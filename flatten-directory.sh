#!/bin/bash

# Define the output directory
OUTPUT_DIR="./output"

# Create the output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Find all .md and .mdx files recursively and process them
find . -type f \( -name "*.md" -o -name "*.mdx" \) | while read -r file; do
echo ${file}
  # Get the relative path of the file
  relative_path="${file#./}"

  # Replace path separators with "__"
  new_name="${relative_path//\//__}"

  # Copy the file to the output directory with the new name
  cp "$file" "$OUTPUT_DIR/$new_name"
done

echo "Files copied and renamed successfully to $OUTPUT_DIR."