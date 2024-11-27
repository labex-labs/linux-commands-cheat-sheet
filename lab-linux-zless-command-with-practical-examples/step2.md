# Explore the Syntax and Options of the zless Command

In this step, you will learn about the various syntax and options available with the `zless` command. Understanding the command's syntax and options will help you use it more effectively when working with compressed files.

Let's start by exploring the basic syntax of the `zless` command:

```
zless [options] [compressed_file]
```

Here are some common options you can use with the `zless` command:

- `-h` or `--help`: Displays the help information for the `zless` command.
- `-V` or `--version`: Displays the version information for the `zless` command.
- `-n` or `--line-numbers`: Displays line numbers when viewing the compressed file.
- `-p` or `--pattern=PATTERN`: Searches for the specified pattern within the compressed file.

Example usage:

```
zless -n example.txt.gz
```

This will display the contents of the `example.txt.gz` file with line numbers.

```
zless -p "error" example.log.gz
```

This will search for the word "error" within the `example.log.gz` file and display the results.
