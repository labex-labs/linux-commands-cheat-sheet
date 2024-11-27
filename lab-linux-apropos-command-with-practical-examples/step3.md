# Customize apropos Searches with Regular Expressions

In this final step, we will learn how to customize our `apropos` searches using regular expressions.

Regular expressions (regex) are a powerful way to perform more advanced and precise searches. They allow you to use special characters and patterns to match specific text within the man page summaries.

Let's start by searching for commands that contain the word "file" and end with the word "copy":

```bash
sudo apropos "file.*copy$"
```

Example output:

```
cp(1)                 - copy files and directories
```

The regular expression `file.*copy$` matches commands that have the word "file" followed by any number of characters, and then end with the word "copy".

Next, let's search for commands that start with the word "list" and contain the word "directory":

```bash
sudo apropos "^list.*directory"
```

Example output:

```
dir(1)                - list directory contents
ls(1)                 - list directory contents
vdir(1)               - list directory contents
```

The regular expression `^list.*directory` matches commands that start with the word "list" and contain the word "directory" anywhere in the summary.

Regular expressions can be quite powerful, but they can also be complex. It's a good idea to practice and experiment with different patterns to get a feel for how they work.

Remember, you can always refer to the `man 7 regex` page for more information on regular expression syntax and usage.
