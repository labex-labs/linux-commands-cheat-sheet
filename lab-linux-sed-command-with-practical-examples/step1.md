# Understand the Basics of sed Command

In this step, we will learn the basics of the sed (stream editor) command in Linux. The sed command is a powerful tool for text processing and editing, allowing you to perform various operations on text files.

First, let's create a sample text file to work with:

```bash
echo "This is a sample text file." > sample.txt
```

Now, let's explore some basic sed commands:

**Print the entire file**

To print the entire contents of the file, use the following command:

```bash
sed 's/.*/' sample.txt
```

Example output:

```
This is a sample text file.
```

**Print a specific line**

To print a specific line, use the line number with the `p` command:

```bash
sed -n '2p' sample.txt
```

Example output:

```
This is a sample text file.
```

**Substitute text**

To substitute text, use the `s` command followed by the pattern and replacement:

```bash
sed 's/sample/new/' sample.txt
```

Example output:

```
This is a new text file.
```

**Delete lines**

To delete a specific line, use the `d` command followed by the line number:

```bash
sed '2d' sample.txt
```

Example output:

```
This is a sample text file.
```

**Insert or append text**

To insert text before a line, use the `i` command. To append text after a line, use the `a` command:

```bash
sed '2i This is an inserted line.' sample.txt
sed '2a This is an appended line.' sample.txt
```

Example output:

```
This is a sample text file.
This is an inserted line.
This is a sample text file.
This is an appended line.
```

These are just a few basic examples of using the sed command. In the next step, we will explore more advanced sed operations, such as performing text substitution in multiple files.
