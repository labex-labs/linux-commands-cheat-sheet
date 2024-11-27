# Use fgrep to Search for a Fixed String in Text Files

In this step, you will learn how to use the `fgrep` command to search for a fixed string in text files.

Let's start by creating a sample text file with some content:

```
cd ~/project
echo "This is a sample text file." > example.txt
echo "The quick brown fox jumps over the lazy dog." >> example.txt
echo "fgrep is a useful command for searching fixed strings." >> example.txt
echo "It is a variant of the grep command." >> example.txt
```

Now, let's use the `fgrep` command to search for the string "fox" in the `example.txt` file:

```
fgrep "fox" example.txt

Example output:
The quick brown fox jumps over the lazy dog.
```

As you can see, the `fgrep` command prints the line(s) that contain the specified string.

You can also use the `-i` option to perform a case-insensitive search:

```
fgrep -i "FOX" example.txt

Example output:
The quick brown fox jumps over the lazy dog.
```

The `-v` option can be used to invert the search, displaying lines that do not contain the specified string:

```
fgrep -v "fox" example.txt

Example output:
This is a sample text file.
fgrep is a useful command for searching fixed strings.
It is a variant of the grep command.
```

Additionally, you can use the `-c` option to count the number of matching lines:

```
fgrep -c "fox" example.txt

Example output:
1
```

In the next step, you will learn how to combine the `fgrep` command with other Linux commands for efficient text manipulation.
