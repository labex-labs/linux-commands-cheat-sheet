# Search for Specific Words or Phrases in Text Files

In this step, you will learn how to use the `look` command to search for specific words or phrases within text files.

First, let's create a sample text file to work with:

```
echo "The quick brown fox jumps over the lazy dog." > ~/project/sample.txt
```

Now, let's search for the word "fox" in the `sample.txt` file:

```
look fox ~/project/sample.txt
```

This will output:

```
fox
```

You can also search for phrases by enclosing the search term in quotes:

```
look "quick brown" ~/project/sample.txt
```

This will output:

```
quick brown
```

The `look` command is case-sensitive by default. To make the search case-insensitive, use the `-f` option:

```
look -f "the" ~/project/sample.txt
```

This will output:

```
The
the
```

You can also use the `look` command to search for lines that start with a specific pattern:

```
look app ~/project/words.txt
```

This will search the `words.txt` file (which we created in the previous step) and display all lines starting with "app".

Example output:

```
apple
applejack
applesauce
appliance
application
```

The `look` command can be a powerful tool for quickly searching through text files for specific words or phrases.
