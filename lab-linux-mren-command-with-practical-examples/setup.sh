#!/bin/bash

# Create sample files
cd ~/project
touch file1.txt file2.txt file3.txt file4.txt file5.txt
touch file001.txt file002.txt file003.txt
touch image01.jpg image02.jpg image03.jpg

# Rename files using mren
mren 'file(\d+).txt' 'myfile_\1.txt' *.txt
mren 'file(\d+).txt' 'myfile_\1.txt' *.t
mren 'image(\d+).jpg' 'myimage_\1.jpg' *.jpg