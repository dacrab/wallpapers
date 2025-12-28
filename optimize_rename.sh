#!/bin/bash
mkdir -p nord_optimized
count=1
total=$(ls nord/*.webp | wc -l)

# Read files line by line from sorted ls
ls nord/*.webp | sort | while read img; do
    # Format count with leading zeros (001, 002...)
    new_name=$(printf "nord_%03d.webp" "$count")
    
    echo "[$count/$total] Processing $img -> $new_name"
    
    # Compress and rename
    gowall compress "$img" --output "nord_optimized/$new_name" --method lossywebp -q 80 > /dev/null 2>&1
    
    count=$((count + 1))
done
