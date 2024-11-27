# Use grep to Search for Patterns in Text Files

In this step, you will learn how to use the grep command to search for more complex patterns in text files.

Let's start by creating a more complex sample file:

```bash
cat > sample.txt <<EOF
The quick brown fox jumps over the lazy dog.
The lazy dog sleeps all day.
I like cats and dogs.
I don't like snakes.
EOF
```

Now, let's search for lines that contain both "dog" and "lazy":

```bash
grep -E "dog.*lazy|lazy.*dog" sample.txt
```

Example output:

```
The quick brown fox jumps over the lazy dog.
The lazy dog sleeps all day.
```

The `-E` option enables extended regular expressions, which allows us to use the `|` operator to match either "dog.*lazy" or "lazy.*dog" patterns.

You can also use grep to search for lines that contain a specific word, but exclude other words. For example, let's find lines that contain "dog" but not "lazy":

```bash
grep "dog" sample.txt | grep -v "lazy"
```

Example output:

```
I like cats and dogs.
```

The `grep -v` command is used to exclude lines that match the given pattern.

Another useful feature of grep is the ability to display the line number of the matching lines. Let's try that:

```bash
grep -n "dog" sample.txt
```

Example output:

```
1:The quick brown fox jumps over the lazy dog.
2:The lazy dog sleeps all day.
3:I like cats and dogs.
```

The `-n` option adds the line number before each matching line.

In the next step, you will learn how to combine grep with other Linux commands for more powerful text processing.
