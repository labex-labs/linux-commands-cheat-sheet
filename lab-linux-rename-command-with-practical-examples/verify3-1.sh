#!/bin/bash
touch file1.txt file2.jpg file3.pdf file4.doc
rename 's/\.txt$/.doc/' *.txt
rename 's/(.*)\.jpg$/image_\1.jpg/' *.jpg
if [ -e file1.doc -a -e image_file2.jpg -a -e file3.pdf -a -e file4.doc ]; then
    echo "Batch file renaming successful"
    exit 0
else
    echo "Batch file renaming failed"
    exit 1
fi