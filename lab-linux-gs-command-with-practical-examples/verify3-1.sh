#!/bin/bash
if [ -f sample_optimized.pdf ]; then
    original_size=$(du -h sample_large.pdf | cut -f1)
    optimized_size=$(du -h sample_optimized.pdf | cut -f1)
    if [ "$optimized_size" != "$original_size" ]; then
        echo "PDF optimization successful. Original size: $original_size, Optimized size: $optimized_size"
        exit 0
    else
        echo "PDF optimization failed. Original size and optimized size are the same."
        exit 1
    fi
else
    echo "Optimized PDF file not found."
    exit 1
fi