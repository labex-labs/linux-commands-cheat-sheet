#!/bin/bash

# Create a sample file
echo "START
This is the first part.
END
START
This is the second part.
END
START
This is the third part.
END" > sample_file.txt

# Split the file using csplit
csplit sample_file.txt '/START/' '{*}'