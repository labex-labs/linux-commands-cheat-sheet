# Perform Text Substitution Using sed

In this step, we will explore more advanced text substitution using the sed command.

First, let's create a new sample file with multiple occurrences of the word "old":

```bash
echo "This is an old text. Replace the old text with new text." > sample.txt
```

**Replace all occurrences of a word**

To replace all occurrences of a word, use the global `g` flag:

```bash
sed 's/old/new/g' sample.txt
```

Example output:

```
This is an new text. Replace the new text with new text.
```

**Replace only the first occurrence**

To replace only the first occurrence, omit the global `g` flag:

```bash
sed 's/old/new/' sample.txt
```

Example output:

```
This is an new text. Replace the old text with new text.
```

**Replace on a specific line**

To replace text on a specific line, use the line number before the `s` command:

```bash
sed '1s/old/new/' sample.txt
```

Example output:

```
This is an new text. Replace the old text with new text.
```

**Replace using regular expressions**

Sed also supports regular expressions. To replace text using a regular expression, use the `\1` syntax to refer to captured groups:

```bash
sed 's/\(This.*\)old\(.*\)/\1new\2/' sample.txt
```

Example output:

```
This is an new text. Replace the new text with new text.
```

**Replace in multiple files**

To replace text in multiple files, pass the file names as arguments to the sed command:

```bash
sed 's/old/new/g' sample.txt another_file.txt
```

This will perform the text substitution in both `sample.txt` and `another_file.txt`.

In the next step, we will learn how to edit multiple files using the sed command.
