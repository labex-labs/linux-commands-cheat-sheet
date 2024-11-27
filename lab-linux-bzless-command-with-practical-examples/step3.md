# Utilize bzless for Navigating Compressed Text Files

In this final step, you will learn how to use the `bzless` command to efficiently navigate through compressed text files.

First, let's create a larger bzip2-compressed file to work with:

```bash
curl -s https://www.gutenberg.org/files/2600/2600-0.txt | bzip2 > moby_dick.txt.bz2
```

This file contains the full text of the novel "Moby Dick" by Herman Melville, compressed using bzip2.

Now, let's use the `bzless` command to explore this file:

```bash
bzless moby_dick.txt.bz2
```

You can use the following commands to navigate through the file:

- `Spacebar`: Scroll down one page
- `b`: Scroll up one page
- `G`: Go to the end of the file
- `g`: Go to the beginning of the file
- `/`: Search for a pattern
- `n`: Go to the next search result
- `q`: Quit the `bzless` command

For example, to search for the word "whale" in the file:

```
# Press '/' and type 'whale'
# Press 'n' to go to the next search result
```

You can also combine the `bzless` command with other tools to perform more advanced operations. For example, to count the number of occurrences of the word "whale" in the file:

```bash
bzless moby_dick.txt.bz2 | grep -c 'whale'
```

This will output the number of times the word "whale" appears in the compressed file.
