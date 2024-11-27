# Combine bzgrep with Other Linux Commands for Advanced Searches

In this final step, you will learn how to combine the `bzgrep` command with other Linux commands to perform more advanced searches on compressed files.

Let's start by creating a sample compressed file with some text:

```
echo "This is a test file.
This is another test file.
This is the third test file." | bzip2 > test.bz2
```

Now, you can use `bzgrep` together with other commands to perform more complex searches:

1. **Find unique words in the compressed file:**

```
bzgrep -o '\w+' test.bz2 | sort | uniq
```

This will output all the unique words found in the compressed file.

2. **Count the number of occurrences of a word:**

```
bzgrep -o 'test' test.bz2 | wc -l
```

This will output the number of times the word "test" appears in the compressed file.

3. **Search for a pattern and display the file name:**

```
bzgrep -H 'test' test.bz2
```

This will output the file name and the matching lines for the pattern "test".

4. **Search recursively in a directory of compressed files:**

```
mkdir compressed_files
mv test.bz2 compressed_files/
bzgrep -r 'test' compressed_files/
```

This will search for the pattern "test" in all compressed files within the "compressed_files" directory.

By combining `bzgrep` with other Linux commands, you can create powerful search and analysis workflows for working with compressed files.
