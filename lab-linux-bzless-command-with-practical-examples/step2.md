# Explore bzless Command Options

In this step, you will learn about the various options available with the `bzless` command to customize its behavior.

First, let's create another bzip2-compressed file to work with:

```bash
echo "This is another sample text file." | bzip2 > another.txt.bz2
```

Now, let's explore some of the `bzless` command options:

1. **Display line numbers**: Use the `-N` or `--line-numbers` option to display line numbers:

   ```bash
   bzless -N another.txt.bz2
   ```

   Example output:

   ```
    1 This is another sample text file.
   ```

2. **Set the number of lines to display per page**: Use the `-z` or `--window` option to set the number of lines to display per page:

   ```bash
   bzless -z 10 another.txt.bz2
   ```

   This will display 10 lines per page.

3. **Search for a pattern**: Use the `/` character followed by the pattern to search for a specific text:

   ```bash
   bzless another.txt.bz2
   # Press '/' and type 'sample'
   ```

   This will allow you to search for the word 'sample' within the compressed file.

4. **Navigate to a specific line**: Use the `G` command to go to a specific line number. For example, to go to line 1:

   ```bash
   bzless another.txt.bz2
   # Press 'G' and type '1'
   ```

These are just a few examples of the available `bzless` command options. You can explore more options by running `man bzless` in the terminal.
