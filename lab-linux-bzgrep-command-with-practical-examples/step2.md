# Use bzgrep to Search for Patterns in Compressed Files

In this step, you will learn how to use the `bzgrep` command to search for patterns in compressed files.

First, let's create a sample compressed file to work with:

```
echo "This is a test file." | bzip2 > test.bz2
```

Now, you can use the `bzgrep` command to search for patterns in the compressed file:

```
bzgrep test test.bz2
```

This will output the matching lines from the compressed file:

```
This is a test file.
```

You can also use regular expressions with `bzgrep`:

```
bzgrep 'is a .* file' test.bz2
```

Example output:

```
This is a test file.
```

Additionally, you can use various options with `bzgrep` to customize the search:

```
# Case-insensitive search
bzgrep -i test test.bz2

# Show line numbers
bzgrep -n test test.bz2
1:This is a test file.

# Invert the search
bzgrep -v test test.bz2
```

By combining `bzgrep` with other Linux commands, you can perform more advanced searches on compressed files. For example, to find all unique words in a compressed file:

```
bzgrep -o '\w+' test.bz2 | sort | uniq
```

This will output all the unique words found in the compressed file.
