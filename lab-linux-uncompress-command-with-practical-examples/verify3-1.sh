#!/bin/bash
if uncompress sample2.txt.gz &> /dev/null; then
    echo "The uncompress command was able to decompress the Gzipped file, which is unexpected."
    exit 1
fi
if uncompress corrupted.txt.gz &> /dev/null; then
    echo "The uncompress command was able to decompress the corrupted Gzipped file, which is unexpected."
    exit 1
fi
exit 0