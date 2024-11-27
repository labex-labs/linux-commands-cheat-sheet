# Search and Highlight Text in less

In this step, you will learn how to search for and highlight text within a file using the `less` command.

Let's continue using the `book.txt` file we created in the previous step. Open the file with `less`:

```bash
less book.txt
```

To search for a specific term, simply type `/` followed by the term you want to find. For example, to search for the word "Alice", type:

```
/Alice
```

This will highlight the first occurrence of "Alice" in the text. To move to the next occurrence, press `n`. To move to the previous occurrence, press `N`.

You can also search for a term in reverse by using `?` instead of `/`. For example, to search for "Alice" in reverse, type:

```
?Alice
```

In addition to searching, `less` also allows you to highlight text. To highlight all occurrences of a term, use the `-P` option followed by a regular expression. For example, to highlight all occurrences of the word "Alice", use the following command:

```
-P'Alice'
```

This will highlight all instances of the word "Alice" throughout the text.

To remove the highlighting, simply press the `ESC` key.

Try experimenting with different search and highlighting techniques using the `book.txt` file.
