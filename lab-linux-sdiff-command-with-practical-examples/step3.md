# Customize the Output of the sdiff Command

In this step, we will learn how to customize the output of the `sdiff` command to suit your specific needs.

First, let's create two sample text files with some differences:

```
# Create two sample text files
echo "This is line 1 in file1.txt" > file1.txt
echo "This is line 1 in file2.txt" > file2.txt
echo "This is line 2 in file1.txt" >> file1.txt
echo "This is line 2 in file2.txt" >> file2.txt
```

Now, let's explore some of the options available to customize the `sdiff` command output:

1. **Suppress the output of common lines**:

   ```
   sdiff -s file1.txt file2.txt
   ```

   This will only display the lines that are different between the two files.

2. **Set the width of the output**:

   ```
   sdiff -w 80 file1.txt file2.txt
   ```

   This will set the output width to 80 characters.

3. **List only the left side of the differences**:

   ```
   sdiff -l file1.txt file2.txt
   ```

   This will display only the content from the left file (file1.txt).

4. **List only the right side of the differences**:

   ```
   sdiff -r file1.txt file2.txt
   ```

   This will display only the content from the right file (file2.txt).

5. **Write the merged output to a file**:
   ```
   sdiff -o merged_file.txt file1.txt file2.txt
   ```
   This will write the merged output to the file `merged_file.txt`.

By using these options, you can customize the `sdiff` command output to suit your specific needs, making it a powerful tool for text processing and editing tasks.
