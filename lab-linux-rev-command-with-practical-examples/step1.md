# Understand the rev Command

In this step, you will learn about the `rev` command in Linux, which is used to reverse the order of characters in each line of a file.

The `rev` command reads the specified files line by line, and writes each line to the standard output with the characters in reverse order. If no files are specified, `rev` reads from the standard input.

Let's start by running the `rev` command on a simple text file:

```bash
echo "Hello, World!" > example.txt
rev example.txt
```

Example output:

```
!dlroW ,olleH
```

As you can see, the `rev` command has reversed the order of characters in the line.

You can also use `rev` to reverse the order of lines in a file:

```bash
cat <<EOF > example.txt
Line 1
Line 2
Line 3
EOF
rev example.txt
```

Example output:

```
3 eniL
2 eniL
1 eniL
```

In this example, the `rev` command has reversed the order of the lines in the `example.txt` file.

The `rev` command is a simple but useful utility in the Linux command-line toolkit. It can be used in various scenarios, such as reversing text for obfuscation, or as part of more complex text processing pipelines.
