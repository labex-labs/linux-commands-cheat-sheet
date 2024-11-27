# Fold Text Files with Different Column Widths

In this step, you will learn how to use the `fold` command to fold text files with different column widths.

First, let's create a sample text file named `example.txt` with some long lines of text:

```
echo "This is a long line of text that needs to be folded to fit within a certain width." > example.txt
echo "Another long line of text that should be folded." >> example.txt
```

Now, let's try folding the `example.txt` file with different column widths:

```
# Fold the file with the default width of 80 columns
fold example.txt
```

Example output:

```
This is a long line of text that needs to
be folded to fit within a certain width.
Another long line of text that should be
folded.
```

```
# Fold the file with a width of 40 columns
fold -w 40 example.txt
```

Example output:

```
This is a long line of text that needs to
be folded to fit within a certain
width.
Another long line of text that should
be folded.
```

```
# Fold the file with a width of 20 columns
fold -w 20 example.txt
```

Example output:

```
This is a long
line of text
that needs to
be folded to
fit within a
certain
width.
Another long
line of text
that should
be folded.
```

As you can see, the `fold` command adjusts the line breaks based on the specified column width, making the text more readable.
