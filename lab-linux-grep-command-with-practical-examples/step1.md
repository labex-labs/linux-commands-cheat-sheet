# Understand the Basics of grep Command

In this step, you will learn the basics of the grep command in Linux. The grep command is a powerful tool used for searching and matching patterns in text files.

First, let's create a sample text file to practice with:

```bash
echo "The quick brown fox jumps over the lazy dog." > sample.txt
```

Now, let's use the grep command to search for the word "fox" in the sample.txt file:

```bash
grep "fox" sample.txt
```

Example output:

```
The quick brown fox jumps over the lazy dog.
```

The grep command searches the file and prints out the lines that contain the specified pattern, in this case, "fox".

Next, let's try a case-insensitive search for the word "dog":

```bash
grep -i "dog" sample.txt
```

Example output:

```
The quick brown fox jumps over the lazy dog.
```

The `-i` option makes the search case-insensitive, so it will match both "dog" and "Dog".

You can also use regular expressions with grep to perform more advanced pattern matching. For example, to search for lines that start with "The":

```bash
grep "^The" sample.txt
```

Example output:

```
The quick brown fox jumps over the lazy dog.
```

The `^` symbol is a regular expression that matches the beginning of a line.

That's the basic introduction to the grep command. In the next steps, you will learn how to use grep with more advanced options and combine it with other Linux commands.
