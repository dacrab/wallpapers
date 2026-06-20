#!/usr/bin/env bash
set -e

DIR="/home/dacrab/Pictures/wallpapers/catppuccin-mocha"
BATCH_SIZE=5

echo "=== Converting ALL catppuccin-mocha images with gowall ==="
echo "Processing in batches of $BATCH_SIZE to avoid high RAM usage"
echo "Total: $(ls "$DIR"/*.webp 2>/dev/null | wc -l) images"
echo ""

mkdir -p /tmp/in /tmp/out

total=$(ls "$DIR"/*.webp 2>/dev/null | wc -l)
count=0

for img in "$DIR"/*.webp; do
    [ -f "$img" ] || continue
    basename "$img" >> /tmp/batch-list.txt
done

i=0
while IFS= read -r f; do
    # Copy to input dir
    cp "$DIR/$f" /tmp/in/
    i=$((i + 1))

    # Process batch every BATCH_SIZE or at end
    if [ "$i" -ge "$BATCH_SIZE" ]; then
        count=$((count + i))
        echo "[$count/$total] Processing batch of $i images..."
        gowall convert --dir /tmp/in --theme catppuccin --output /tmp/out --format webp --yes 2>/dev/null
        for out in /tmp/out/*.webp; do
            [ -f "$out" ] && cp "$out" "$DIR/" && echo "  Done: $(basename "$out")"
        done
        rm -f /tmp/in/* /tmp/out/*
        i=0
    fi
done < /tmp/batch-list.txt

# Final batch
if [ "$i" -gt 0 ]; then
    count=$((count + i))
    echo "[$count/$total] Processing final batch of $i images..."
    gowall convert --dir /tmp/in --theme catppuccin --output /tmp/out --format webp --yes 2>/dev/null
    for out in /tmp/out/*.webp; do
        [ -f "$out" ] && cp "$out" "$DIR/" && echo "  Done: $(basename "$out")"
    done
    rm -f /tmp/in/* /tmp/out/*
fi

echo ""
echo "All done! $count images processed."
rm -rf /tmp/in /tmp/out /tmp/batch-list.txt
