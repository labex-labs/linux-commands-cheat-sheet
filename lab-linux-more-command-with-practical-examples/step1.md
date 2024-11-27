# Understand the Purpose and Syntax of the more Command

In this step, you will learn about the purpose and basic syntax of the `more` command in Linux. The `more` command is a text file pager that allows you to view the contents of a file one page at a time.

To use the `more` command, simply type `more` followed by the filename you want to view. For example:

```
$ more ~/project/example.txt
```

This will open the `example.txt` file and display its contents one page at a time. You can navigate through the file using the following commands:

- Press the **Space** key to display the next page.
- Press the **Enter** key to display the next line.
- Press **b** to go back one page.
- Press **q** to quit the `more` command.

Example output:

```
This is the first page of the example.txt file.
It contains several lines of text.

Press the Space key to see the next page.
```

The `more` command also supports various options that allow you to customize its behavior. For example, you can use the `-d` option to display prompts that explain how to use the command, or the `-c` option to clear the screen before displaying each page.
