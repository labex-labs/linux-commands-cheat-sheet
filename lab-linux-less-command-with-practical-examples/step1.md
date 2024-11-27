# Understand the less Command

In this step, you will learn about the `less` command, a powerful text viewer for Linux. The `less` command allows you to view and navigate through text files efficiently.

First, let's create a sample text file that we can use for this exercise:

```bash
echo "This is a sample text file for the less command." > sample.txt
```

Now, let's use the `less` command to view the contents of the `sample.txt` file:

```bash
less sample.txt
```

Example output:

```
This is a sample text file for the less command.
```

The `less` command opens the file in a pager, allowing you to navigate through the text. Here are some basic navigation commands in `less`:

- `spacebar` or `pagedown`: Move down one page
- `b` or `pageup`: Move up one page
- `g`: Move to the beginning of the file
- `G`: Move to the end of the file
- `/` followed by a search term: Search for the term in the file
- `n`: Move to the next occurrence of the search term
- `q`: Quit the `less` pager

The `less` command provides many more features and options, but these are the basic commands you'll use most often.
