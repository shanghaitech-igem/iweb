#!/bin/bash

# Check if required commands are available
command -v cwebp >/dev/null 2>&1 || { echo >&2 "cwebp is required but not installed. Aborting."; exit 1; }
command -v gif2webp >/dev/null 2>&1 || { echo >&2 "gif2webp is required but not installed. Aborting."; exit 1; }

# Find all image files in current directory
for img in *.png *.jpg *.jpeg *.gif; do
    # Skip if no files found
    [ -e "$img" ] || continue
    
    # Get filename without extension
    filename="${img%.*}"
    
    # Handle different file types
    if [[ "$img" == *.gif ]]; then
        # Convert GIF using gif2webp with min_size for best compression
        gif2webp -min_size -mt "$img" -o "${filename}.webp"
    else
        # Convert other formats using cwebp with lossless compression
        cwebp "$img" -o "${filename}.webp"
    fi
        
    if [ $? -eq 0 ]; then
        echo "Successfully converted $img to ${filename}.webp"
    else
        echo "Failed to convert $img"
    fi
done

echo "Conversion process completed!"
