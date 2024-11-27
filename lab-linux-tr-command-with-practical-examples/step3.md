# Squeeze and Complement Characters with tr

In this step, you will learn how to use the `tr` command to squeeze and complement characters in text.

Squeezing characters means replacing each sequence of a repeated character with a single occurrence of that character. For example, if you have a file with multiple consecutive spaces, you can use `tr` to squeeze them.

```
echo "Hello   World!" | tr -s ' '
```

Example output:

```
Hello World!
```

In this example, the `tr` command with the `-s` (squeeze-repeats) option replaces the multiple consecutive spaces with a single space.

Complementing characters means using the complement of the specified character set. For example, if you have a file with both uppercase and lowercase letters, and you want to extract only the uppercase letters, you can use the `-c` (complement) option.

```
echo "Hello, World!" | tr -c 'A-Z' ''
```

Example output:

```
HW
```

In this example, the `tr` command with the `-c` option extracts only the uppercase letters from the input.
