# Navigate Through Text Files with less

In this step, you will learn how to navigate through text files using the `less` command.

First, let's create a larger text file that we can use to practice navigation:

```bash
curl -o book.txt https://www.gutenberg.org/files/84/84-0.txt
```

This downloads the full text of "Alice's Adventures in Wonderland" by Lewis Carroll, which we can use to explore the navigation features of `less`.

Now, let's open the `book.txt` file using `less`:

```bash
less book.txt
```

You should see the contents of the book displayed in the `less` pager. Here are some commands to navigate through the file:

- `spacebar` or `pagedown`: Move down one page
- `b` or `pageup`: Move up one page
- `g`: Move to the beginning of the file
- `G`: Move to the end of the file
- `/` followed by a search term: Search for the term in the file
- `n`: Move to the next occurrence of the search term
- `?` followed by a search term: Search for the term in reverse
- `N`: Move to the previous occurrence of the search term
- `h`: Display the `less` help menu with all available commands

Try using these commands to navigate through the "Alice's Adventures in Wonderland" text. For example, you can search for a character's name or a specific quote from the book.

When you're done, press `q` to quit the `less` pager.
