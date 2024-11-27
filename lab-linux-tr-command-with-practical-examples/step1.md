# Understand the tr Command

In this step, you will learn about the `tr` command in Linux, which is used for translating, deleting, squeezing, and complementing characters in text.

The basic syntax of the `tr` command is:

```
tr [OPTION] SET1 [SET2]
```

Where:

- `SET1` is the set of characters to be translated or deleted.
- `SET2` is the set of characters to translate `SET1` to.
- `OPTION` can be one of the following:
  - `-c, --complement`: Use the complement of `SET1`.
  - `-d, --delete`: Delete characters in `SET1` from the input.
  - `-s, --squeeze-repeats`: Replace each sequence of a repeated character (that is in the `SET1`) with a single occurrence of that character.
  - `-t, --truncate-set1`: Truncate `SET1` to the length of `SET2`.

Let's start with a simple example to understand the basic usage of the `tr` command.

```
echo "Hello, World!" | tr 'a-z' 'A-Z'
```

Example output:

```
HELLO, WORLD!
```

In this example, the `tr` command translates all lowercase letters in the input to their uppercase counterparts.
