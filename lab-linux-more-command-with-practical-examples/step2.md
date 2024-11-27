# Navigate and Search Through Text Files with the more Command

In this step, you will learn how to navigate and search through text files using the `more` command.

First, let's create a larger text file for you to practice with:

```
$ cd ~/project
$ curl -o example.txt https://raw.githubusercontent.com/stiang/remove-accents/master/data/words_alpha.txt
```

This will download a file containing a large list of words to your `~/project` directory.

Now, let's open the file using the `more` command:

```
$ more example.txt
```

You can use the following commands to navigate through the file:

- Press the **Space** key to display the next page.
- Press the **Enter** key to display the next line.
- Press **b** to go back one page.
- Press **q** to quit the `more` command.

To search for a specific word or phrase within the file, you can use the `/` key followed by the search term. For example:

```
/linux
```

This will highlight the first occurrence of the word "linux" in the file. You can press **n** to navigate to the next occurrence, or **N** to navigate to the previous occurrence.

Example output:

```
This is the first page of the example.txt file.
It contains a large list of words.

/linux
  linux
  linux-based
  linux-compatible
  linux-friendly
  linux-kernel
  linux-powered
```

As you can see, the `more` command provides a simple and effective way to view and search through text files directly in the terminal.
