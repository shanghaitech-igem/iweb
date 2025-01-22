#!/bin/bash

# Check if the user provided a text file as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <text_file>"
  exit 1
fi

# Define the input text file
input_file="$1"

# Extract URLs ending with .gif, .png, or .jpg using regex
urls=$(grep -oP 'https?://[^\s]+?\.(gif|png|jpg)' "$input_file")

# Check if any URLs were found
if [ -z "$urls" ]; then
  echo "No image URLs found in the file."
  exit 0
fi

# Download each image using wget
for url in $urls; do
  wget "$url"
done

echo "Download complete."