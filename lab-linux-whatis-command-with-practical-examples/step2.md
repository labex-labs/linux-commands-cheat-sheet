# Explore the Syntax and Options of whatis Command

In this step, you will learn about the syntax and available options of the `whatis` command.

The basic syntax of the `whatis` command is:

```bash
whatis [options] keyword
```

Here are some common options for the `whatis` command:

- `-a` or `--appropos`: Search for keywords in the manual page names and descriptions, instead of just the descriptions.
- `-n` or `--section`: Specify the manual section to search, such as `1` for user commands, `5` for file formats, etc.
- `-r` or `--regex`: Interpret the keyword as a regular expression.
- `-s` or `--sections`: Specify a comma-separated list of manual sections to search.

Let's try some examples:

```bash
whatis -a grep
```

Example output:

```
grep (1)         - print lines matching a pattern
grep (1p)        - a pattern matching utility
```

The `-a` option allows `whatis` to search both the command name and description, returning more results.

```bash
whatis -n 5 passwd
```

Example output:

```
passwd (5)       - password file
```

The `-n 5` option limits the search to only the file formats manual section.

```bash
whatis -r '^ls'
```

Example output:

```
ls (1)           - list directory contents
```

The `-r` option allows using a regular expression as the search keyword.
